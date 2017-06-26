module Restaurant.State exposing (init, update, subscriptions)

import Restaurant.Types exposing (Model, Msg)

init: (Model, Cmd Msg)
init =
    ([{id = 1, name = "Restaurant 1"}], Cmd.none)

update: Msg -> Model -> (Model, Cmd Msg)
update action model =
    case action of
        Restaurant.Types.Add -> (model, Cmd.none)

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none