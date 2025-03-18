# Generate gRPC code in pb-aaa folder
window_proto:
	if not exist pb-aaa mkdir pb-aaa
	protoc -Iaaa-proto --go_out=pb-aaa --go-grpc_out=pb-aaa --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative aaa-proto/auth.proto
	protoc -Iaaa-proto --go_out=pb-aaa --go-grpc_out=pb-aaa --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative aaa-proto/role_permission.proto
	protoc -Iaaa-proto --go_out=pb-aaa --go-grpc_out=pb-aaa --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative aaa-proto/connectRolePermission.proto
	protoc -Iaaa-proto --go_out=pb-aaa --go-grpc_out=pb-aaa --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative aaa-proto/service.proto

linux_proto:
	mkdir -p pb-aaa
	protoc -Iaaa-proto --go_out=pb-aaa --go-grpc_out=pb-aaa --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative aaa-proto/auth.proto
	protoc -Iaaa-proto --go_out=pb-aaa --go-grpc_out=pb-aaa --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative aaa-proto/role_permission.proto
	protoc -Iaaa-proto --go_out=pb-aaa --go-grpc_out=pb-aaa --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative aaa-proto/connectRolePermission.proto
	protoc -Iaaa-proto --go_out=pb-aaa --go-grpc_out=pb-aaa --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative aaa-proto/service.proto
