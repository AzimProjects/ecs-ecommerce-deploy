resource "aws_docdb_cluster" "mongodb" {
  cluster_identifier      = "ecommerce-mongo"
  master_username        = "admin"
  master_password        = "password123"
  skip_final_snapshot    = true
}
