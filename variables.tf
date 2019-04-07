#TODO enable private API Access & include a bastion host

variable "region" {
  default = "us-west-2"
}

variable "map_accounts" {
  description = "Additional AWS account numbers to add to the aws-auth configmap."
  type        = "list"

  default = [
    "883127560329",
  ]
}

variable "map_accounts_count" {
  description = "The count of accounts in the map_accounts list."
  type        = "string"
  default     = 2
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type        = "list"

  default = [
    {
      role_arn = "arn:aws:iam::883127560329:role/AllowManageEKSClusters"
      username = "AllowManageEKSClusters"
      group    = "system:masters"
    },
  ]
}

variable "map_roles_count" {
  description = "The count of roles in the map_roles list."
  type        = "string"
  default     = 1
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type        = "list"

  default = [
    {
      user_arn = "arn:aws:iam::883127560329:user/AWSEKSMasterUser1"
      username = "AWSEKSMasterUser1"
      group    = "system:masters"
    },
    {
      user_arn = "arn:aws:iam::883127560329:user/AWSEKSMasterUser2"
      username = "AWSEKSMasterUser2"
      group    = "system:masters"
    },
  ]
}

variable "map_users_count" {
  description = "The count of roles in the map_users list."
  type        = "string"
  default     = 2
}

variable "worker_ami_name_filter" {
  description = "Additional name filter for AWS EKS worker AMI. Default behaviour will get latest for the cluster_version but could be set to a release from amazon-eks-ami, e.g. \"v20190220\""
  default     = "v*"
}
