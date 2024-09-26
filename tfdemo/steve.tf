provider "google" {

}

resource "google_cloud_run_service" "stevedemo" {
  name     = "cloudrun-srv"
  location = "us-central1"

  template {
    spec {
      containers {
        image = "coursedemos/spaceinvaders:v2"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}