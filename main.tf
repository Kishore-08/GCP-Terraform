

provider "google" {
  credentials = file("amiable-evening-413709-acef4404927f.json")
  project     = "amiable-evening-413709"
  region      = "us"
}

resource "google_storage_bucket" "my_bucket" {
  name          = "tf-bucket"
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true
}
