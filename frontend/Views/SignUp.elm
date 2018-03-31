module Views.SignUp exposing (signUpView)

import Html exposing (..)
import Html.Events exposing (onInput)
import Html.Attributes exposing (..)
import Types exposing (..)


signUpView : Model -> Html Msg
signUpView model =
  div []
    [ h1 [] [ text "Sing Up"]
    , Html.form []
      [ div []
        [ label [ for "name" ]
            [ text "Name" ]
        , br [] []
        , input
            [ id "name"
            , type_ "text"
            , value model.auth.name
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
          [ label [ for "password-confirm" ]
              [ text "Password Confirm" ]
          , br [] []
          , input
              [ id "password-confirm"
              , type_ "password"
              , onInput UpdatePasswordConfirm
              ]
              []
          ]
      , div []
        [ button []
            [ text "Sing Up"]
        ]
      ]
    ]