module Restaurant.List exposing (display)

import Html exposing (text, div, h1, span, Html)
import Restaurant.Types exposing (..)

display : Restaurants -> Html Msg
display listRestaurant =
    let
        result =
            if ((List.isEmpty listRestaurant)) then
                div [][text "No restaurants recorded..."]
            else
                div [] (List.map restaurantRow listRestaurant)
    in
    div []
    [
        h1 [][text "Restaurants"],
        result,
        div[]
        [
            span [][text "Total: "],
            span []
            [
                listRestaurant
                |> List.length
                |> toString
                |> text
            ]
        ]
        
    ]

restaurantRow : Restaurant -> Html Msg
restaurantRow restaurant =
    div [] 
    [
        span [][text "Name : "],
        span [][text restaurant.name]
    ]