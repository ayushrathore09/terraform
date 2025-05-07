# terraform.tf: 
here we are downloading the provider "AWS" for provisioning the infra on it. By default only local provider is available, 
when we initialize the terraform it downloads the required provioders in .terraform directory.

# providers.tf:
here we can modify the region in which particular region we want to provision the resources.

# variables.tf:
here we are declaring the variable, which we are passing in main.tf (ec2.tf) instead of passing hardcoded values.

# ec2.tf
here we are provisioning the ec2 instance including key_pair, vpc, security group and storage block.

# install_nginx.sh:
here we are installing the nginx web server after provisioning the ec2 server using "user_data".

# outputs.tf:
here we are checking the output of ec2 ip and domain after provisioning using output block.




