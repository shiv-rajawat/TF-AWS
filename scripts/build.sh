#!/bin/bash
echo $PWD
cd $PWD/tf-code
echo $PWD
echo $HOME
terraform init -backend-config="region=us-east-2"
terraform apply -var "access_key=$AWS_ACCESS_KEY_ID" -var "secret_key=$AWS_SECRET_ACCESS_KEY" -var-file=param.tfvars -auto-approve
