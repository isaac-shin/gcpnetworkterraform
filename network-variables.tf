# network varibles | network-single-region.tf

# define GCP region
variable "gcp_region_1" {
  type = string
  description = "GCP region"
}

# define GCP zone
variable "gcp_zone_1" {
  type = string
  description = "GCP zone"
}

# define public subnet
variable "public_subnet_cidr_1" {
  type = string
  description = "public subnet CIDR 1"
}

variable "public_subnet_cidr_2" {
  type = string
  description = "public subnet CIDR 2"
}

variable "private_subnet_cidr_3" {
  type = string
  description = "private subnet CIDR 3"
}

variable "private_subnet_cidr_4" {
  type = string
  description = "private subnet CIDR 4"
}
