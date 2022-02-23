#!/bin/bash

echo -e "\n+++++ Starting deployment +++++\n"

tfswitch 1.0.0

rm -rf ./bin

echo "+++++ build go packages +++++"

cd source/appv1
make test
make build
cd ../..

echo "+++++ hello module +++++"
cd terraform
terraform init 
terraform init -input=false
terraform apply -input=false -auto-approve
cd ../

echo -e "\n+++++ Deployment done +++++\n"