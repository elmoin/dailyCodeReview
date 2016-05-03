module DailyReview (..) where

import Html exposing (Html)
import Html.Attributes as Attr
import StartApp.Simple as StartApp
import Array exposing (Array)

main : Signal Html
main =
  StartApp.start { model = currentTime, view = myView, update = myUpdate }

names : Array String
names =
  Array.fromList [ "Gregor", "Tomke", "Tim", "Jens", "Daniel", "Jonas" ]

port currentTime : Int

myView : a -> Int -> Html
myView address currentTime =
  let
    reversedModulo = flip (%)
  in
    Html.div
      [ generalStyle ]
      [ currentTime |> (flip (%)) (60 * 24) |> reversedModulo (Array.length names) |> toString |> Html.text ]

myUpdate : a -> b -> b
myUpdate action model = model

generalStyle : Html.Attribute
generalStyle =
  Attr.style
    [ ( "font-size", "16px" )
    , ( "font-family", "monospace" )
    , ( "width", "700px" )
    ]
