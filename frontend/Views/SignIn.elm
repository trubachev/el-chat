module Views.SignIn exposing (signInView)

import Html exposing (..)
import Html.Events exposing (onInput)
import Html.Attributes exposing (..)

import Types exposing (..)
import Utils exposing (..)

signInView : Model -> Html Msg
signInView model =
  div []
    [ h1 [] [ text "Sing In"]
    , Html.form
      [ onEventSend "submit" SubmitSignInForm ]
      [ div []
        [ label [ for "name" ]
            [ text "Name" ]
        , br [] []
        , input
            [ id "name"
            , type_ "text"
            , value model.authForm.name
            , onInput UpdateName
            ]
            []
        ]
      , div []
        [ label [ for "password" ]
            [ text "Password" ]
        , br [] []
        , input
            [ id "password"
            , type_ "password"
            , onInput UpdatePassword
            ]
            []
        ]
      , div []
        [ button []
            [ text "Sing In"]
        ]
      ]
    ]