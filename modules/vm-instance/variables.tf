variable "name" {
  description = "names of various resources"
  type = string
}


variable "instance_type" {
  description = "instance type to be used"
  type = string
}

variable "instance_zone" {
  description = "zone where instance will be created"
  type = string
}

variable "instance_image" {
  description = "instance image"
  type = string
}