variable "aws_region" {
  description = "The AWS region to create things in."
  # default     = "us-east-1"
  # if the above default value is not set Terraform will ask you for the region during runtime.
}

variable "aws_account_id" {
  description = "AWS account ID"
  default     = "" # Fill in your account ID
}

variable "az_count" {
  description = "Number of AZs to cover in a given AWS region"
  default     = "2"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "<YOUR-ACCOUNT-ID>.dkr.ecr.us-east-1.amazonaws.com/nginx" # Path to your Docker image!
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 2
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "256"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "512"
}
