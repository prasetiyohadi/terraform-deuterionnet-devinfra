variable "credentials_file" {
  sensitive = true
}

variable "project" {}

variable "region" {
  default = "asia-southeast2"
}

variable "zone" {
  default = "asia-southeast2-b"
}
