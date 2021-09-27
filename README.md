# gcpnetworkterraform

The terraform script will perform the following: 

- creates 1 vpc, 2 public subnets, and 2 private subnets

- deploys a redhat vm instance in sub1, and an apache instance in sub3 

- deploys a load balancer will listen on 80 and redirect traffic to apache in subnet 3

lb-managed.tf --> Create managed instance group, backend services and all components required by the load balancer 

lb-managed-variables.tf --> Load balancer variables

network-firewall.tf --> Configure basic firewall for the network

network-variables.tf --> Define network variables

network.tf --> Define network, vpc, subnet, icmp firewall

provider.tf --> Configure Google Cloud provider

terraform.tfvars --> Defining variables 

variables-auth.tf --> Application and authentication variables

vm-output.tf --> Output of VMs 

vm.tf --> Template to create a Ubuntu VM with Apache web server

# Notes/Steps

1. Set up your gcloud and json key to connect to your new project - https://cloud.google.com/iam/docs/creating-managing-service-account-keys

2. Documentation using and setting up vpc - https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork

3. Documentation using and setting up subnetwork https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork

4. Documentation using and setting up vm https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance

5. Documentation using and setting firewall, http, ssh, and rdp  https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall

6. Check list of Google Cloud OS images to use --> https://cloud.google.com/compute/docs/images

7. Read and referenced the following github --> https://github.com/guillermo-musumeci/terraform-gcp-single-region-private-lb-autoscale
