# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "terraform-labs-backend"
resource "aws_s3_bucket" "backend_states" {
  bucket              = "terraform-labs-backend"
  bucket_prefix       = null
  force_destroy       = null
  object_lock_enabled = false
  tags = {
    CreationDate = "22-August-2024"
    Name         = "terraform-labs-backend"
  }
  tags_all = {
    CreationDate = "22-August-2024"
    Name         = "terraform-labs-backend"
  }
}


output "arn" {
  value = aws_s3_bucket.backend_states.arn
}


data "aws_s3_objects" "bucket_objects" {
  bucket = aws_s3_bucket.backend_states.bucket
}

output "objects" {
  value = data.aws_s3_objects.bucket_objects.keys
}