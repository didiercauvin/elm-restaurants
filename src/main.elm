module App exposing (main)

import Html exposing (Html, text, div, program, button, span, h1)
import Navigation

import App.State exposing (..)
import App.View as View
import App.Types exposing (..)

main : Program Never Model Msg
main =
    Navigation.program OnLocationChange
    {
        init = init,
        view = View.root,
        update = update,
        subscriptions = subscriptions
    }