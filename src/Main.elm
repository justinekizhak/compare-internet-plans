module Main exposing (..)

import Browser
import Html exposing (Html, Attribute, div, input, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)



-- MAIN


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Form =
    { fupSpeed : Int
    , fupDataLimit : Int
    , postFupSpeed : Int
    , planCost : Int
    , valueForMoney : Int
    }


type NumberOfBlocks
    = Int


init : Form
init =
    { fupSpeed = 0
    , fupDataLimit = 0
    , postFupSpeed = 0
    , planCost = 0
    , valueForMoney = 0
    }



-- UPDATE


type Msg
    = ChangeFupSpeed String
    | ChangeFupDataLimit String
    | ChangePostFupSpeed String
    | ChangePlanCost String


update : Msg -> Form -> Form
update msg model =
    case msg of
        ChangeFupSpeed input ->
            { model
                | fupSpeed =
                    String.toInt input
                        |> Maybe.withDefault 0
                        |> abs
            }

        ChangeFupDataLimit input ->
            { model
                | fupDataLimit =
                    String.toInt input
                        |> Maybe.withDefault 0
                        |> abs
            }

        ChangePostFupSpeed input ->
            { model
                | postFupSpeed =
                    String.toInt input
                        |> Maybe.withDefault 0
                        |> abs
            }

        ChangePlanCost input ->
            { model
                | planCost =
                    String.toInt input
                        |> Maybe.withDefault 0
                        |> abs
            }



-- VIEW


view : Form -> Html Msg
view model =
    div []
        [ viewInput "number" "Enter FUP speed" model.fupSpeed ChangeFupSpeed
        , viewInput "number" "Enter FUP data limit" model.fupDataLimit ChangeFupDataLimit
        , viewInput "number" "Enter Post FUP speed" model.postFupSpeed ChangePostFupSpeed
        , viewInput "number" "Enter plan cost" model.planCost ChangePlanCost
        , viewVFM model
        ]


viewInput : String -> String -> Int -> (String -> msg) -> Html msg
viewInput t p v toMsg =
    input [ type_ t, placeholder p, value (String.fromInt v), onInput toMsg ] []


viewVFM : Form -> Html Msg
viewVFM model =
    div []
        [ text
            (checkVFM
                (calcValueForMoney
                    model.fupSpeed
                    model.fupDataLimit
                    model.postFupSpeed
                    model.planCost
                )
            )
        ]


calcValueForMoney : Int -> Int -> Int -> Int -> Float
calcValueForMoney fupSpeed fupDataLimitInput postFupSpeed planCost =
    let
        totalTime =
            3600 * 24 * 30

        fupDataLimit =
            fupDataLimitInput * 8000

        maxDataUse =
            ((totalTime
                - (toFloat fupDataLimit / toFloat fupSpeed)
             )
                * toFloat postFupSpeed
                + toFloat fupDataLimit
            )
                / 8000
    in
    maxDataUse / toFloat planCost


checkVFM : Float -> String
checkVFM input =
    if isNaN input || isInfinite input then
        "Please enter some valid input"

    else
        String.fromFloat input
