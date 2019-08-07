/*!!!!!!!!!!!!!!ATTENTION:!!!!!!!!!!!!!!!!!!
Export these environment variables prior to applying this Terraform plan
$ export AWS_ACCESS_KEY_ID="anaccesskey"
$ export AWS_SECRET_ACCESS_KEY="asecretkey"
$ export AWS_DEFAULT_REGION="us-east-1"*/

#Set a unique identifier which will be added to any tags
unique_id = "BHDEMO"
#All Ubuntu Server AMIs per region
region = "us-east-2"

key_pair = "cnp_demo_keys"

customer_gw_ip = "4.14.202.50"

#All CNP AMIs per region
cnp_amis = {
  owner_id = "679593333241" #AWS Marketplace
  name = "IPS_AMI--5.1.1.24037*"
}

#Instance types
types = {
  bastion = "t2.micro"
  work = "t2.micro"
  cnp = "c5.2xlarge"
}

#Internet VPC specific values
inet_vpc = {
  cidr = "10.0.0.0/16"
  name = "inet_vpc"
  desc = "Internet VPC"
  pub_sub_cidr = "10.0.0.0/24"
  pub_sub_name = "Internet VPC - Public Subnet"
  conn_sub_cidr = "10.0.1.0/24"
  conn_sub_name = "Internet VPC - Connection Subnet"
  auto_pub_ip = true
}

#Inspection VPC specific values
insp_vpc = {
  cidr = "172.20.0.0/16"
  name = "insp_vpc"
  desc = "Inspection VPC"
  insp_sub_cidr = "172.20.1.0/24"
  insp_sub_name = "Inspection VPC - Inspection Subnet"
  conn_sub_cidr = "172.20.0.0/24"
  conn_sub_name = "Inspection VPC - Connection Subnet"
  san_sub_cidr = "172.20.2.0/24"
  san_sub_name = "Inspection VPC - Sanitized Subnet"
}

#Workload VPC specific values
work_vpc = {
  cidr = "192.168.152.0/24"
  name = "work_vpc"
  desc = "Workload VPC"
  sub_cidr = "192.168.152.0/24"
  sub_name = "Workload VPC Subnet"
  sg_name = "Default SG"
}

#Inspection TGW
insp_tgw = {
  desc = "Inspection TGW"
  name = "Inspection TGW"
  insp_conn_sub_att_name = "Inspection Connection Subnet ATT"
  inet_conn_sub_att_name = "Internet Connection Subnet ATT"
  work_sub_att_name = "Workload Subnet ATT"
}

#Sanitized TGW
san_tgw = {
  desc = "Sanitized TGW"
  name = "Sanitized TGW"
  inet_conn_sub_att_name = "Internet Connection Subnet ATT"
  insp_conn_sub_att_name = "Inspection Connection Subnet ATT"
  work_sub_att_name = "Workload Subnet ATT"
}

#Premise TGW - connected on premise resources to cloud resource
vpn_tgw = {
  desc = "VPN TGW"
  name = "VPN TGW"
  inet_conn_sub_att_name = "Internet Connection Subnet ATT"
  insp_conn_sub_att_name = "Inspection Connection Subnet ATT"
  work_sub_att_name = "Workload Subnet ATT"
  #vpn_tgw_prem_att = "Premise VPN ATT"
}

