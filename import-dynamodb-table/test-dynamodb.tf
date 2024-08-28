# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "test"
resource "aws_dynamodb_table" "test-table" {
  billing_mode                = "PROVISIONED"
  deletion_protection_enabled = false
  hash_key                    = "LockID"
  name                        = "test"
  range_key                   = null
  read_capacity               = 5
  restore_date_time           = null
  restore_source_name         = null
  restore_source_table_arn    = null
  restore_to_latest_time      = null
  stream_enabled              = false
  stream_view_type            = null
  table_class                 = "STANDARD"
  tags                        = {}
  tags_all                    = {}
  write_capacity              = 5
  attribute {
    name = "LockID"
    type = "S"
  }
  point_in_time_recovery {
    enabled = false
  }
  ttl {
    attribute_name = null
    enabled        = false
  }
}
