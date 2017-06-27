module Routing.App exposing (..)

import Navigation exposing (..)
import UrlParser exposing (..)

import Routing.Types exposing (..)

matchers: Parser (Route -> a) a
matchers =
    oneOf
    [
        map Home top,
        map Restaurants(s "restaurants")
    ]

parseLocation: Location -> Route
parseLocation location =
    case (parseHash matchers location) of
        Just route ->
            route
        Nothing ->
            NotFoundRoute