resource "aws_oam_sink" "this" {
  count = var.enable_cw_oam_sink ? 1 : 0
  name  = "${var.name}-sink"
  tags  = var.tags
}

resource "aws_oam_sink_policy" "this" {
  count           = var.enable_cw_oam_sink ? 1 : 0
  sink_identifier = aws_oam_sink.this[0].id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["oam:CreateLink", "oam:UpdateLink"]
        Effect   = "Allow"
        Resource = "*"
        Principal = "*"
        Condition = {
          "ForAllValues:StringEquals" = {
            "oam:ResourceTypes" = var.resource_types
          }
          "ForAnyValue:StringEquals" = {
                   "aws:PrincipalOrgID" = var.principal_org_ids
          }
        }
      }
    ]
  })
}
