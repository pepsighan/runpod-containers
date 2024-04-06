variable "RELEASE" {
    default = "2.16.1"
}

target "default" {
  dockerfile = "Dockerfile"
  tags = ["pepsighan/tensorflow:${RELEASE}"]
  contexts = {
    scripts = "../../container-template"
    proxy = "../../container-template/proxy"
  }
}
