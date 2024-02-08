proto: auth_proto order_proto product_proto

auth_proto:
	protoc --go_out=. --go_opt=paths=source_relative     --go-grpc_out=. --go-grpc_opt=paths=source_relative     pkg/auth/pb/auth.proto

order_proto:
		protoc --go_out=. --go_opt=paths=source_relative     --go-grpc_out=. --go-grpc_opt=paths=source_relative     pkg/order/pb/order.proto

product_proto:
		protoc --go_out=. --go_opt=paths=source_relative     --go-grpc_out=. --go-grpc_opt=paths=source_relative     pkg/product/pb/product.proto

server:
	go run cmd/main.go