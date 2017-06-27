module App.View exposing (root)

import Html exposing (Html, div, text, span, button)
--import Html.Events exposing (onClick)

import App.Types exposing (..)
import Routing.Types exposing (..)
import Restaurant.List

root : Model -> Html Msg
root model =
    div[]
    [
        -- div[]
        -- [
        --     span []
        --     [
        --         homeBtn
        --     ],
        --     span []
        --     [
        --         restaurantsBtn
        --     ]
        -- ],
        div[]
        [
            page model
        ]
    ]

page: Model -> Html Msg
page model =
    case model.route of
        Restaurants ->
            Html.map RestaurantsMsg (Restaurant.List.display model.restaurants)
        Home ->
            homeView model
        NotFoundRoute ->
            notFoundView


homeView: Model -> Html Msg
homeView model =
    div[]
    [
        div[]
        [
            text "Hello!!!"
        ]
    ]

homeBtn:  Html Msg
homeBtn =
    button []
    [
        text "Home"
    ]

restaurantsBtn: Html Msg
restaurantsBtn =
    button []
    [
        text "Restaurants"
    ]

notFoundView : Html msg
notFoundView =
    div []
        [ text "Not found"
        ]