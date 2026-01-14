resource "google_pubsub_topic" "topics" {
  for_each = var.pubsubs
  name     = each.key
}

resource "google_pubsub_subscription" "subscriptions" {
  for_each = var.pubsubs

  name  = each.value.subscription
  topic = google_pubsub_topic.topics[each.key].name
}
