module App exposing (main)

import Html exposing (Html, text, div, program, button, span, h1)
import Html.Events exposing (onClick)

import Restaurant.State as State exposing (..)
import Restaurant.View as View exposing (..)
import Restaurant.Types exposing (..)

main : Program Never Model Msg
main =
    program
    {
        init = State.init,
        view = View.restaurantList,
        update = State.update,
        subscriptions = State.subscriptions
    }