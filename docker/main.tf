terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {

}

resource "docker_image" "image1" {
  name         = "nginx"
  keep_locally = false
}

resource "docker_container" "container1" {
  image = docker_image.image1.image_id
  name  = "RDFirstTerra"

  ports {
    internal = 80
    external = 8000
  }
}
