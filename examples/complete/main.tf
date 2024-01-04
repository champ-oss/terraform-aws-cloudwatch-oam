module "this" {
  source = "../../"
}

/*
data "aws_caller_identity" "current" {}

# create in monitoring account
module "sink" {
  source             = "../../"
  enable_cw_oam_sink = true
  principal_org_ids    = "o-example123"
}

# create in cloudwatch source account
module "link" {
  source             = "../../"
  enable_cw_oam_link = true
  sink_identifier    = module.sink.sink_id
  depends_on         = [module.sink]
}
*/