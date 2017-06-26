module Restaurant.View exposing (..)

import Html exposing (Html)

import Restaurant.Types exposing (..)
import Restaurant.List exposing (display)

restaurantList: List Restaurant -> Html Msg
restaurantList list =
    display list