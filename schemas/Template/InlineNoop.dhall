let changeMode = ../../types/ChangeModeNoop.dhall

let Template = ../../types/Template.dhall

let default =
      { change_mode = changeMode.noop
      , left_delimiter = None Text
      , perms = None Text
      , right_delimiter = None Text
      }

let new = Template.Type.InlineTemplateNoop

in  { Type = Template.NoopInlineConfig, default, new }