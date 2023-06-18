terraform {
  cloud {
    organization = "opistola"

    workspaces {
      name = "myhomepage-prod"
    }
  }
}