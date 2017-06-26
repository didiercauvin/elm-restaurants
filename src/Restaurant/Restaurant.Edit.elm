module Restaurant.Edit exposing (display)

import Html exposing (div, input, button, span, text, Html)
import Html.Attributes exposing (placeholder)

import Restaurant.Types exposing (Restaurant, Msg)

display: Restaurant -> Html Msg
display restaurant = 
    div[]
    [
        span[] [input [placeholder "Enter a name..."][]],
        span[] [button[] [text "OK"]]
    ]