#! /bin/bash

PS3='Please select the target AWS environment to apply the configuration to:'
options=("development" "staging" "production" "quit")
select opt in "${options[@]}"
do
  case $opt in
    "development")
        ENV="dv"
        export AWS_PROFILE="development"
        break;;
    "staging")
        ENV="st"
        export AWS_PROFILE="staging"
        break;;
    "production")
        ENV="pr"
        export AWS_PROFILE="production"
        break;;
    "quit")
        exit 0;;
    *) echo "invalid option $REPLY";;
  esac
done

echo "Applying terraform configuration to the ${AWS_PROFILE} AWS environment..."
rm -rf .terraform*
terraform init
terraform plan -var-file="${ENV}.tfvars" -state="${ENV}.tfstate" -out="${ENV}.tfplan"
terraform apply -auto-approve -state="${ENV}.tfstate" "${ENV}.tfplan"

exit 0