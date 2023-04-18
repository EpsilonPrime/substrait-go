#!/bin/bash

# Assume we're running from the proto directory (where this script is located).

# Since we don't control where the repo has been checked out we first create the protobufs and then move them into place.
protoc --go_out=. --proto_path=../third-party/substrait/proto ../third-party/substrait/proto/substrait/*proto
protoc --go_out=. --proto_path=../third-party/substrait/proto ../third-party/substrait/proto/substrait/extensions/*proto

# Move them.
mv github.com/substrait-io/substrait-go/proto/*.pb.go .
mv github.com/substrait-io/substrait-go/proto/extensions/*.pb.go extensions/

# Clean up the leftover directories but use rmdir so we don't accidentally delete something unexpectedly.
rmdir github.com/substrait-io/substrait-go/proto/extensions
rmdir github.com/substrait-io/substrait-go/proto
rmdir github.com/substrait-io/substrait-go
rmdir github.com/substrait-io
rmdir github.com
