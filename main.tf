# Data source for our SSH key

data "digitalocean_ssh_key" "mexy-dokey" {
  name = "pumej-dokey"
}

# Creating a Digital Ocean Droplet
resource "digitalocean_droplet" "pumej-droplet" {
  image    = var.image
  name     = var.droplet_name
  region   = var.droplet_region
  size     = var.image_size
  ssh_keys = [data.digitalocean_ssh_key.mexy-dokey.id]
}