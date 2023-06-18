dev:
	cd myhome && hugo server --verbose

build:
	cd myhome && hugo

## terraform
tf-fmt:
	cd terraform/ && terraform fmt

tf-init:
	cd terraform/ && terraform init -upgrade

tf-plan:
	cd terraform/ && terraform plan -out=".terraform/plan.out" -var="do_token=${DO_TOKEN}" -var="namecheap_api_key=${NAMECHEAP_API_KEY}" -var="namecheap_api_user=${NAMECHEAP_API_USER}" -var="namecheap_user_name=${NAMECHEAP_USER_NAME}"

tf-apply:
	cd terraform/ && terraform apply ".terraform/plan.out"

tf-destroy:
	cd terraform/ && terraform destroy -var="do_token=${DO_TOKEN}" -var="namecheap_api_key=${NAMECHEAP_API_KEY}" -var="namecheap_api_user=${NAMECHEAP_API_USER}" -var="namecheap_user_name=${NAMECHEAP_USER_NAME}"