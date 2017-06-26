module App.View exposing (root)

import Html exposing (Html)

import App.State exposing (..)

import App.Types exposing (Model, Msg)
import Restaurant.List exposing (display)

root : Model -> Html Msg
root model =
    display model