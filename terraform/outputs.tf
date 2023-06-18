output "default_url" {
  value = digitalocean_app.myhomepage.default_ingress
}

output "live_url" {
  value = digitalocean_app.myhomepage.live_url
}

output "urn" {
  value = digitalocean_app.myhomepage.urn
}