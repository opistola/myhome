variable "do_token" {
  type        = string
  description = "The token necessary to authenticate with the DigitalOcean API"
}

variable "mydomain" {
  type        = string
  description = "The domain to create the DNS records for"
  default     = "www.otnip.eu"
}

variable "namecheap_user_name" {
  type        = string
  description = "A registered user name for Namecheap."
}

variable "namecheap_api_user" {
  type = string
  description = "The API user for Namecheap."
}

variable "namecheap_api_key" {
    type = string
    description = "The API key for Namecheap."
}