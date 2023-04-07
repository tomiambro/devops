variable "app_name" {
  description = "Name of the web application"
  type        = string
  default     = "web-app"
}

# EC2 Variables

variable "ami" {
  description = "Amazon machine image to use for ec2 instance"
  type        = string
  default     = "ami-08d70e59c07c61a3a"
}

variable "instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "how_many" {
  description = "number of instances"
  type        = number
  default     = 1
}