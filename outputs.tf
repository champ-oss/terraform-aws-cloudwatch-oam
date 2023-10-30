output "sink_id" {
  description = "ID string that AWS generated as part of the sink ARN."
  value       = aws_oam_sink.this[0].id
}
