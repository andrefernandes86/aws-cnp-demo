# cnp_terrafrom_templates
Terraform templates for automating deployment of Cloud Network Protection

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


