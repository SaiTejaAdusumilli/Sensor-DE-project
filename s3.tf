resource "aws_s3_bucket" "sensor-bucket" {
  bucket = "sensor-bucket-007"

  tags = {
    Name        = "Sensor DE bucket"
    Environment = "Dev"
  }
}