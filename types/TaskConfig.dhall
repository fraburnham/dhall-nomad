let Prelude = ../Prelude.dhall

let JSON = Prelude.JSON.Type

in  < Docker : ./Docker/DockerConfig.dhall
    | RawExec : ./RawExec.dhall
    | Java : ./Java.dhall
    | Custom : JSON
    >
