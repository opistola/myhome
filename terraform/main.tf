resource "digitalocean_app" "myhomepage" {
  spec {
    name   = "myhome"
    region = "ams"

    domain {
      name = var.mydomain
    }

    static_site {
      name          = "otnip"
      source_dir    = "/myhome/"
      build_command = "hugo"
      output_dir    = "public"

      github {
        repo           = "opistola/myhome"
        branch         = "main"
        deploy_on_push = true
      }

    }
  }
}

resource "namecheap_domain_records" "domain_cname" {
  domain = "otnip.eu"
  mode = "MERGE"

  record {
    hostname = "www"
    type = "CNAME"
    address = split("//", digitalocean_app.myhomepage.default_ingress)[1]
  }

  depends_on = [digitalocean_app.myhomepage]
}