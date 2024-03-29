## This image will be used to deploy the hello world application
variable "deployment_image" {
  description = "(Required)- Please provie docker image for deployment."
}

## Actual environment to use FuchiCorp uses namespace as environment
variable "deployment_environment" {
  description = "(Required)- Please provide deployment environment <namespace>."
}

## Deployment endpoint for the application
variable "deployment_endpoint" {
  type = map(string)
  default = {
    test  = "test-hello."
    dev   = "dev-hello."
    qa    = "qa-hello."
    prod  = "hello."
    stage = "stage-hello."
  }
  description = "(Optional)- Application endpoint."
}

## This domain name will be included to application endpoint
variable "google_domain_name" {
  default     = "fuchicorp.com"
  description = "(Optional)- Actual domain name to use for the deployment."
}

variable "hello_world" {
  type = map(string)

  default = {
    enabled = "true"
  }

  description = "-(Optional) The Hellow World map configuration."
}

variable "deployment_name" {}

variable "credentials" {}

variable "google_bucket_name" {}

variable "google_project_id" {}

variable "extra_vars" {
  default = "example"
}
