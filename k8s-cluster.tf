resource "digitalocean_kubernetes_cluster" "benjamionlo-k8s-cluster" {
  name   = "benjamionlo-k8s-cluster"
  region = "nyc1"
  # Grab the latest version slug from `doctl kubernetes options versions`
  version = "1.20.2-do.0"

  node_pool {
    name       = "worker-pool"
    size       = "s-2vcpu-2gb"
    node_count = 1
  }
}