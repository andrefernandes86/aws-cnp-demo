variable "unique_id" {
  type        = string
  description = "A unique string that will be prepended to Name tags for all craeated resources"
}

variable "key_pair" {
  type        = string
  description = "The name of the keypair you will use to connect to the instances.  This keypair must exist in the region"
}

variable "private_key_file" {
  type        = string
  description = "Provide the full path to your private key file that corresponds to the keypair you specified above."
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "sms_api_key" {
  type        = string
  description = "Provide the SMS API key from the wiki page that describes how to use this Terraform template"
}

variable "sms_private_ip" {
  type = string
}

variable "sms_ami_id" {
  type = string
}

variable "struts_port" {
  type = string
}

/*
variable "cloudwatch_logs_policy" {
  type = map(string)
  default = {
    file_name = "cloudwatch_logs_policy.json"
    tags = {
      Name = "CloudWatch_logs_policy"
      Description = "Allows CloudWatch to track metric data"
    }
  }
}

variable "cloudwatch_logs_role" {
  default = {
    tags = {
      Name = "CloudWatch_logs_role"
      Description = "Allows Cloudwatch to track metric data for CNP"
    }
  }
}*/

variable "cnp_amis" {
  type = map(string)
  default = {
    owner_id = "679593333241" #AWS Marketplace
    name     = "IPS_AMI--5.1.1.24037*"
  }
}

variable "types" {
  type = map(string)
  default = {
    bastion = "t2.micro"
    work    = "t2.micro"
    cnp     = "c5.2xlarge"
  }
}

variable "inet_vpc" {
  type = map(string)
  default = {
    #Internet VPC Defaults
    cidr          = "10.0.0.0/16"
    name          = "bh_inet_vpc"
    desc          = "Internet VPC"
    pub_sub_cidr  = "10.0.1.0/24"
    pub_sub_name  = "Internet VPC - Public Subnet"
    conn_sub_cidr = "10.0.2.0/24"
    conn_sub_name = "Internet VPC - Connection Subnet"
  }
}

variable "insp_vpc" {
  type = map(string)
  default = {
    #Inspection VPC Defaults
    cidr               = "172.20.0.0/16"
    name               = "insp_vpc"
    desc               = "Inspection VPC"
    insp_sub_cidr      = "172.20.1.0/24"
    insp_sub_name      = "Inspection VPC - Inspection Subnet"
    insp_conn_sub_cidr = "172.20.0.0/24"
    insp_conn_sub_name = "Inspection VPC - Connection Subnet"
    san_sub_cidr       = "172.20.2.0/24"
    san_sub_name       = "Inspection VPC - Sanitized Subnet"
  }
}

variable "work_vpc" {
  type = map(string)
  default = {
    #Workload VPC Defaults
    cidr     = "192.168.152.0/24"
    name     = "work_vpc"
    desc     = "Workload VPC"
    sub_cidr = "192.168.152.0/24"
    sub_name = "Workload VPC Subnet"
  }
}

variable "insp_tgw" {
  type = map(string)
  default = {
    desc = "Inspection TGW"
    name = "Inspection TGW"
  }
}

variable "san_tgw" {
  type = map(string)
  default = {
    desc = "Sanitized TGW"
    name = "Sanitized TGW"
  }
}

variable "vpn_tgw" {
  type = map(string)
  default = {
    desc = "Premise TGW"
    name = "Premise TGW"
  }
}
