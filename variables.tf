variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "asia-south1"
}

variable "pubsubs" {
  description = "Pub/Sub topics and subscriptions"
  type = map(object({
    subscription = string
  }))
}
