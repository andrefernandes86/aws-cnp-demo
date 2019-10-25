# cnp_terrafrom_templates

Terraform templates for automating deployment of Cloud Network Protection

Prior to deploying this template, please request that the vSMS AMI be shared with your AWS account.  You will need to provide your AWS account number.

Pass in the following environment variables:
* TF_VAR_key_pair
* TF_VAR_private_key_file
* TF_VAR_sms_api_key
* AWS_ACCESS_KEY_ID
* AWS_SECRET_ACCESS_KEY

```
cnp_demo:
	Internet VPC
		Public Subnet
		Public Connection subnet
		Bastion Instance
		vSMS Instance
	Workload VPC
		Workload Instance
		Workload subnet
	Inspection VPC
		CNP Instance
		Inspection Connection subnet
		Inspection Subnet
		Sanitized Subnet
	Inspection TGW
		Internet VPC attachment to Public Connection subnet
		Workload VPC attachment to workload subnet
		Inspection VPC attachment to Inspection Connection subnet
	Sanitized TGW
		Internet VPC attachment to Public Connection subnet
    Workload VPC attachment to workload subnet
    Inspection VPC attachment to Inspection Connection subnet
```