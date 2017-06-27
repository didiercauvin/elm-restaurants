module Restaurant.State exposing (update)

import Navigation

import Restaurant.Types exposing (..)

update: Msg -> Model -> (Model, Cmd Msg)
update action model =
    case action of
        ShowAll ->
            (model, Navigation.newUrl "#restaurants")