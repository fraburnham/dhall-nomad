let TaskConfig = ../types/TaskConfig.dhall

in  { Type = ../types/Java.dhall
    , default =
      { args = None (List Text)
      , class = None Text
      , class_path = None Text
      , jar_path = None Text
      , pid_mode = None Text
      , ipc_mode = None Text
      , cap_add = None (List Text)
      , cap_drop = None (List Text)
      }
    , new = TaskConfig.Java
    }
