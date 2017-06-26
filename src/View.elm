module App.View exposing (root)

import Html exposing (Html)

import Restaurant.Types exposing (Model, Msg)
import Restaurant.List

root : Model -> Html Msg
root model =
    Restaurant.List.root model