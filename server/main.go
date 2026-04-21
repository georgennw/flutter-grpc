package main

import (
	"context"
	"fmt"
	"log"
	"net"
	"sync"

	pb "github.com/georgennw/flutter-grpc/srv_proto"
	"google.golang.org/grpc"
)

type server struct {
	pb.UnimplementedTextSrvServer
	mu    sync.Mutex
	texts []*pb.Text
}

func (s *server) GetTexts(req *pb.TextRequest, srv grpc.ServerStreamingServer[pb.TextsAnswer]) error {
	s.mu.Lock()
	curText := make([]*pb.Text, len(s.texts))
	copy(curText, s.texts)
	s.mu.Unlock()

	for _, item := range curText {
		srv.Send(&pb.TextsAnswer{
			Texts: []*pb.Text{item},
		})
	}

	return nil
}
func (s *server) PostText(context context.Context, req *pb.Text) (*pb.TextReply, error) {
	s.mu.Lock()
	defer s.mu.Unlock()

	newId := fmt.Sprintf("%d", len(s.texts)+1)
	newText := &pb.Text{
		Id: newId,
		T:  req.GetT(),
	}

	s.texts = append(s.texts, newText)

	return &pb.TextReply{Id: newId}, nil
}

func main() {
	lis, err := net.Listen("tcp", ":8080")
	if err != nil {
		log.Fatalf("creating server error: %v", err)
	}

	grpcServer := grpc.NewServer()

	pb.RegisterTextSrvServer(grpcServer, &server{})

	if err := grpcServer.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %s", err)
	}
}
