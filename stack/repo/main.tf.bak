provider "google" {
 credentials = file("/home/ella_anusha16/key.json")
 project     = var.project
 region      = var.region
}


module "gce" {
  source  = "../modules/gce"
  project = var.project
  name = var.name
}
