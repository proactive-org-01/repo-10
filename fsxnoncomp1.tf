resource "aws_fsx_lustre_file_system" "non_compliant_missing" {
  storage_capacity          = 1200
  subnet_ids                = ["subnet-12345678"]
  deployment_type           = "SCRATCH_2"

  # Non-compliant: auto_import_policy not defined (defaults to disabled)

  tags = {
    Name        = "fsx-lustre-noncompliant-missing"
    Environment = "dev"
  }
}
