{- https://developer.hashicorp.com/nomad/docs/drivers/java TODO: update schema -}
{ class : Optional Text
, class_path : Optional Text
, jar_path : Optional Text
, args : Optional (List Text)
, jvm_options : Optional (List Text)
, pid_mode : Optional Text
, ipc_mode : Optional Text
, cap_add : Optional (List Text)
, cap_drop : Optional (List Text)
}
