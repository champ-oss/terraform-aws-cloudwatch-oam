module "this" {
  source = "../../"
}

/*
data "aws_caller_identity" "current" {}

# create in monitoring account
module "sink" {
  source             = "../../"
  enable_cw_oam_sink = true
  source_accounts    = data.aws_caller_identity.current.account_id
}

# create in cloudwatch source account
module "link" {
  source             = "../../"
  enable_cw_oam_link = true
  sink_identifier    = module.sink.sink_id
  depends_on         = [module.sink]
}
*/