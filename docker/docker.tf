# docker_image.back:
resource "docker_image" "ethereum-node" {
  name          = "j4ckylm/ethereum:0.1"
}

# docker_container.server:
resource "docker_container" "server" {
    name        = "server"
    image       = docker_image.ethereum-node.name

    ports {
        external = 3080
        internal = 3080
    }
}
