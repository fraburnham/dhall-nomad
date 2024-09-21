let Taskconfig = ../types/TaskConfig.dhall

in  { Docker = ./Docker.dhall
    , RawExec = ./RawExec.dhall
    , Java = ./Java.dhall
    , Custom.new = Taskconfig.Custom
    }
