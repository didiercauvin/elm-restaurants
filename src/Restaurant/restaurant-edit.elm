module Restaurant.Edit exposing (edit)

import Html exposing (div, input, button, span, text, Html)
import Html.Attributes exposing (placeholder)

import App.Types exposing (Restaurant, Msg)

edit: Restaurant -> Html Msg
edit restaurant = 
    div[]
    [
        span[] [input [placeholder "Enter a name..."][]],
        span[] [button[] [text "OK"]]
    ]