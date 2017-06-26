module App.Types exposing (..)

type alias Restaurant =
    {
        id : Int,
        name : String
    }

type Msg = Increment | Decrement

type alias Restaurants =
    List Restaurant

type alias Model = 
    Restaurants