variable "tags" {
  description = "Tags to assign to resources"
  type        = map(string)
  default     = {}
}

variable "name" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/oam_sink#name"
  type        = string
  default     = "cloudwatch-oam"
}

variable "git" {
  description = "Name of the Git repo"
  type        = string
  default     = "terraform-aws-cloudwatch-oam"
}

variable "source_accounts" {
  description = "Accounts that are sharing data with this monitoring account."
  type        = list(string)
  default     = []
}

variable "resource_types" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/oam_link#resource_types"
  type        = list(string)
  default     = ["AWS::CloudWatch::Metric", "AWS::Logs::LogGroup"]
}

variable "enable_cw_oam_link" {
  description = "enable cloudwatch oam link"
  type        = bool
  default     = false
}

variable "enable_cw_oam_sink" {
  description = "enable cloudwatch oam sink"
  type        = bool
  default     = false
}

variable "sink_identifier" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/oam_link#sink_identifier"
  type        = string
  default     = ""
}

variable "label_template" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/oam_link#label_template"
  type        = string
  default     = "$AccountName"
}
