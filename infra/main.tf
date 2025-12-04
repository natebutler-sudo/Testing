resource "aws_s3_bucket" "public_bucket" {
  bucket = "company-super-secret-backup-2025"
  acl    = "public-read-write"                  # Public bucket = CRITICAL
}

resource "aws_security_group" "open_world" {
  name = "allow-all-dangerous"

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]                  # World-open ports = CRITICAL
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]                  # SSH open to internet
  }
}
