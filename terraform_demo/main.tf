terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_bigquery_dataset" "demo_dataset" {
  dataset_id = "terraform_demo"
  location   = var.region
}

resource "google_bigquery_table" "demo_table" {
  dataset_id = google_bigquery_dataset.demo_dataset.dataset_id
  table_id   = "terraform_table"
  deletion_protection = false
  schema     = <<EOF
[
  {"name": "id", "type": "STRING", "mode": "REQUIRED"},
  {"name": "value", "type": "STRING", "mode": "NULLABLE"}
]
EOF
}
