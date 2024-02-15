

provider "google" {
  credentials = file("amiable-evening-413709-acef4404927f.json")
  project     = "amiable-evening-413709"
  region      = "us"
}

resource "google_storage_bucket" "gcp_terraform_bucket" {
  name          = "gcp-terraform-bucket"
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true
}
