module App.State exposing (..)

import App.Types exposing (Model, Msg)

init : (Model, Cmd Msg)
init =
    ([{id = 1, name = "Resto 1"}], Cmd.none)

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        _ -> (model, Cmd.none)

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none