module "vpc" {
  source        = "modules/vpc"
  source_ranges = ["0.0.0.0/0"]
}
