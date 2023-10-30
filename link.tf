resource "aws_oam_link" "this" {
  count           = var.enable_cw_oam_link ? 1 : 0
  label_template  = var.label_template
  resource_types  = var.resource_types
  sink_identifier = var.sink_identifier
  tags            = merge(local.tags, var.tags)
}
