output "dataset_id" {
  value = google_bigquery_dataset.demo_dataset.dataset_id
}

output "table_id" {
  value = google_bigquery_table.demo_table.table_id
}
