resource "aws_s3_bucket" "bucket" {
    bucket = "igoreul-terraform-state-backend"
    versioning {
        enabled = true
    }
    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
                sse_algorithm = "AES256"
            }
        }
    }

    tags = {
        Name = "S3 Remote Terraform State Store"
    }
}