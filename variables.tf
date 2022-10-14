variable "name" {
    description = "bucket name"
    type = string
    default = "ndzamngang" 
}

variable "name1" {
    description = "bucket name"
    type = string
    default = "ndzamngang1" 
}

variable "location" {
    description = "bucket location"
    type = string
    default = "US" 
}

variable "instance_image" {
  description = "image to be used by instance"
  type = string
  default = "centos-cloud/centos-7"
}

variable "instance_type" {
  description = "type of instance to be used"
  type = string
  default = "e2-medium"
}

variable "instance_zone" {
  description = "zone where instance will be created"
  type = string
  default = "us-central1-a"
}


