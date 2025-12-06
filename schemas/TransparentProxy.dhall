{- https://developer.hashicorp.com/nomad/docs/job-specification/transparent_proxy -}
{ Type = ../types/TransparentProxy.dhall
, default =
  { exclude_inbound_ports = None (List Text)
  , exclude_outbound_cidrs = None (List Text)
  , exclude_outbound_ports = None (List Integer)
  , exclude_uids = None (List Text)
  , no_dns = False
  , outbound_port = None Integer
  , uid = None Text
  }
}
