#resource "aws_s3_bucket" "primeiro_balde" {
#  bucket = "breno-remote-state"
#}

#resource "aws_s3_bucket_versioning" "versioning" {
#  bucket = aws_s3_bucket.primeiro_balde.id
#  versioning_configuration {
#    status = "Enabled"
#  }
#}