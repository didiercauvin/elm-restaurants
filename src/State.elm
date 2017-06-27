module App.State exposing (init, update, subscriptions)

import Navigation exposing (Location)

import App.Types exposing (..)
import Routing.Types exposing (..)
import Routing.App exposing (..)

init: Location -> (Model, Cmd Msg)
init location =
    let
        currentRoute = parseLocation location
    in
        ({route = currentRoute, restaurants = [{id = 1, name = "Restoto 1"}]}, Cmd.none)

update: Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        RestaurantsMsg msg ->
            (model, Cmd.none)
        OnLocationChange location ->
            let
                newRoute =
                    parseLocation location
            in
                ({model | route = newRoute}, Cmd.none)

subscriptions: Model -> Sub Msg
subscriptions model =
    Sub.none