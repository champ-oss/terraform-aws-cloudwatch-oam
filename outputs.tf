output "sink_id" {
  description = "ID string that AWS generated as part of the sink ARN."
  value       = var.enable_cw_oam_sink ? aws_oam_sink.this[0].id : null
}
