provider "aws" {
  region = "us-east-1"
}

# Non-compliant: Uses Claude model (high-cost provisioning)
resource "aws_bedrock_provisioned_model_throughput" "claude_sonnet" {
  provisioned_model_name = "claude"
  model_arn              = "claude"
  model_units            = 1

  tags = {
    environment = "prod"
    project     = "llm-poc"
    cost_class  = "high"   # Indicator for policy testing
  }
}
