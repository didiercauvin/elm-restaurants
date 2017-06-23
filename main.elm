import Html exposing (Html, text, div, program, button, span, h1)
import Html.Events exposing (onClick)

import Restaurant exposing (..)

type alias Restaurants =
    List Restaurant

type alias Model = 
    Restaurants

type Msg = Increment | Decrement

init : (Model, Cmd Msg)
init =
    ([{id = 1, name = "Resto 1"}], Cmd.none)

view : Model -> Html Msg
view model =
    let
        result =
            if ((List.isEmpty model)) then
                div [][text "No restaurants recorded"]
            else
                div [] (List.map restaurantRow model)
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
                model
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

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        _ -> (model, Cmd.none)

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

main : Program Never Model Msg
main =
    program
    {
        init = init,
        view = view,
        update = update,
        subscriptions = subscriptions
    }