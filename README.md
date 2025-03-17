# terraform
creating infra on AWS uisng terraform using one click.
####################################
> alias terraform='tf'
> tf init : to initialise the backend.
> create a IAM user and access keys for that user to pass in providers.
> do "aws configure" and enter access key using aws cli. 
> create a provider.tf file and resource main.tf file.

> tf plan
> tf apply --auto-approve.
> tf state list
> tf destroy --target="resource name form state list"

