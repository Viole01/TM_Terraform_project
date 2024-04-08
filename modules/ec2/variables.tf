variable "instance_type" {
  description = "EC2 instance type"
  type = string
}

variable "ami" {
  description = "ami ID"
  type = string
}

variable "Name" {
  description = "Name tag of the instance"
  type = string
}

variable "count" {
  description = "Number of instances to create"
  type = number
}