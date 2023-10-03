variable "region" {
  type = string
  description = "AWS region"
  default = "us-east-2"
}

variable "jenkins_master_instance_type" {
  type = string
  description = "Jenkins master EC2 instance type"
  default = "t2.medium"
}

variable "jenkins_worker_instance_type" {
  type = string
  description = "Jenkins worker EC2 instance type"
  default = "t2.medium"
}

variable "jenkins_username" {
  type = string
  description = "Jenkins admin user"
  default = "demo"
}

variable "jenkins_password" {
  type = string
  description = "Jenkins admin password"
  default = "demo"
}

variable "jenkins_credentials_id" {
  type = string
  description = "Jenkins workers SSH based credentials id"
  default = "jenkins-workers"
}

variable "key" {
  type        = string
  description = "SSH key pair"
  default = "jenkins_aws_kp"
}

variable "subnets" {
  type        = list(any)
  description = "Subnets IDs where Jenkins will be deployed"
  default = ["subnet-5aa13221", "subnet-7ac46037", "subnet-2a247243"]
}

#variable "ssl_arn" {
#  type        = string
#  description = "ACM certificate ARN"
#}

#variable "domain_name" {
#  type        = string
#  description = "Route53 domain name"
#}
#
#variable "hosted_zone_id" {
#  type        = string
#  description = "Route53 zone ID"
#}