module App.Types exposing (..)

import Navigation exposing (Location)

import Routing.Types
import Restaurant.Types

type Msg =
    RestaurantsMsg Restaurant.Types.Msg |
    OnLocationChange Location

type alias Model =
    {
        route: Routing.Types.Route,
        restaurants: Restaurant.Types.Restaurants
    }