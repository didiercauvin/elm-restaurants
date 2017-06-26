import Html exposing (Html, text, div, program, button, span, h1)
import Html.Events exposing (onClick)

import App.State as State
import App.View as View
import App.Types exposing (..)

main : Program Never Model Msg
main =
    program
    {
        init = State.init,
        view = View.root,
        update = State.update,
        subscriptions = State.subscriptions
    }