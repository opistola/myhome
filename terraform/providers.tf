terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.27.1"
    }
    namecheap = {
      source = "namecheap/namecheap"
      version = ">= 2.0.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

# Namecheap API credentials
provider "namecheap" {
  user_name = var.namecheap_user_name
  api_user = var.namecheap_api_user
  api_key = var.namecheap_api_key
}