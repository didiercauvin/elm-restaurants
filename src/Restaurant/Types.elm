module Restaurant.Types exposing (..)

type Msg =
    ShowAll
    
type alias Restaurant =
    {
        id : Int,
        name : String
    }


type alias Restaurants =
    List Restaurant

type alias Model = 
    Restaurants