variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  
}

variable "key_name" {
  description = "Name of the key pair in AWS"
  type        = string
} 

variable "public_key_path" {
  description = "Path to your local SSH public key file"
  type        = string
}

variable "ami" {
  description = "AMI of the project"
  type = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  
}

variable "Name" {
  description = "Name of the project"
  type        = string
}
 


