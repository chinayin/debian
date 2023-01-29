variable "version" {
  default = ""
}

variable "repo" {
  default = "chinayin/debian"
}

group "default" {
  targets = ["bullseye", "bullseye-slim"]
}

function "platforms" {
  params = []
  result = ["linux/amd64", "linux/arm64"]
}

variable "registry" {
  default = "docker.io"
}

variable "repository" {
  default = "${registry}/${repo}"
}

target "_all_platforms" {
  platforms = platforms()
}

target "bullseye" {
  inherits = ["_all_platforms"]
  context  = "bullseye"
  tags     = [
    "${repository}:bullseye",
  ]
}
target "bullseye-slim" {
  inherits = ["_all_platforms"]
  context  = "bullseye-slim"
  tags     = [
    "${repository}:latest",
    "${repository}:bullseye-slim",
  ]
}
target "buster" {
  inherits = ["_all_platforms"]
  context  = "buster"
  tags     = [
    "${repository}:buster",
  ]
}
target "buster-slim" {
  inherits = ["_all_platforms"]
  context  = "buster"
  tags     = [
    "${repository}:buster-slim",
  ]
}
