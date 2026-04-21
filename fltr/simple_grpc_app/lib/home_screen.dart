import 'package:flutter/material.dart';
import 'grpc_client.dart';
import 'generated/srv.pb.dart' as pb;

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _currentIndex = 0;

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      GetTextsPage(key: getTextPageKey),
      const PostTextPage(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == 0) {
      getTextPageKey.currentState?.callGetTexts();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Go + Flutter')),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.download), label: 'Get'),
          BottomNavigationBarItem(icon: Icon(Icons.upload), label: 'Post'),
        ],
      ),
    );
  }
}

final GlobalKey<_GetTextsPageState> getTextPageKey = GlobalKey<_GetTextsPageState>();

class GetTextsPage extends StatefulWidget {
  GetTextsPage({Key? key}) : super(key: getTextPageKey);

  @override
  State<GetTextsPage> createState() => _GetTextsPageState();
}

class _GetTextsPageState extends State<GetTextsPage> {
  final List<pb.Text> _items = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    callGetTexts();
  }

  Future<void> callGetTexts() async {
    if (_isLoading) return;

    setState(() {
      _isLoading = true;
      _items.clear();
    });

    try {
      final request = pb.TextRequest();
      final stream = GrpcClient().stub.getTexts(request);

      await for (var answer in stream) {
        setState(() {
          _items.addAll(answer.texts);
        });
      }
    } catch (e) {
      debugPrint('Ошибка gRPC: $e');
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (_isLoading) const LinearProgressIndicator(),
        Expanded(
          child: _items.isEmpty && !_isLoading
              ? const Center(child: Text('Список пуст. Добавьте текст на второй вкладке.'))
              : ListView.builder(
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    final item = _items[index];
                    return ListTile(
                      leading: CircleAvatar(child: Text(item.id)),
                      title: Text(item.t),
                    );
                  },
                ),
        ),
      ],
    );
  }
}

class PostTextPage extends StatefulWidget {
  const PostTextPage({super.key});

  @override
  State<PostTextPage> createState() => _PostTextPageState();
}

class _PostTextPageState extends State<PostTextPage> {
  final TextEditingController _controller = TextEditingController();
  String _status = '';

  void _callPostText() async {
    if (_controller.text.isEmpty) return;

    try {
      final request = pb.Text()..t = _controller.text; 
      
      final response = await GrpcClient().stub.postText(request);
      
      setState(() {
        _status = 'Сервер вернул ID: ${response.id}';
      });
      _controller.clear();
    } catch (e) {
      setState(() => _status = 'Ошибка: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _controller, 
            decoration: const InputDecoration(
              labelText: 'Введите текст',
              border: OutlineInputBorder()
            )
          ),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: _callPostText, child: const Text('Отправить')),
          const SizedBox(height: 20),
          Text(_status, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}