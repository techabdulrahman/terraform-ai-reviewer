terraform {
  required_version = ">= 1.5.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "local_file" "example" {
  filename        = "${path.module}/example.txt"
  content         = "Hello from Terraform!\n"
  file_permission = "0644"
}
