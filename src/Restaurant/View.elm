module Restaurant.View exposing (..)

import Html exposing (Html)

import Restaurant.Types exposing (..)
import Restaurant.List

restaurantList: Restaurants -> Html Msg
restaurantList list =
    Restaurant.List.display list