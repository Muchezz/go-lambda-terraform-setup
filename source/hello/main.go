
  
package main

import (
	"github.com/aws/aws-lambda-go/lambda"
	"github.com/muchezz/go-lambda-terraform-setup/source/hello/handler"
)

func main() {
	handler := handler.Create()
	lambda.Start(handler.Run)
}