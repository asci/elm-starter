module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Html.App as App


-- model


type alias Model =
    { value : String
    }


initModel : Model
initModel =
    { value = ""
    }



-- update


type Msg
    = Start
    | AdditionalAction


update : Msg -> Model -> Model
update msg model =
    case msg of
        Start ->
            Debug.log "Start action"
                { model | value = "World" }

        _ ->
            model



-- view


view : Model -> Html Msg
view model =
    div [ class "elm-starter" ]
        [ h1 [] [ text "Elm starter" ]
        , appRender model
        , button [ onClick Start ] [ text "Start" ]
        ]


appRender : Model -> Html Msg
appRender model =
    p [] [ text ("Hello, " ++ model.value) ]


main : Program Never
main =
    App.beginnerProgram
        { model = initModel
        , view = view
        , update = update
        }
