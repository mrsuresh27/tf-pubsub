terraform {
  backend "gcs" {
    bucket  = "hip-runner-terraform-statefile"
    prefix  = "pubsub"
  }
}
