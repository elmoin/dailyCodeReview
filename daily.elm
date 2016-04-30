module DailyReview (..) where

import Html
import Html.Attributes as Attr
import StartApp.Simple as StartApp
import Array

main =
  StartApp.start { model = currentTime, view = myView, update = myUpdate }

names =
  Array.fromList [  ]

port currentTime : Int

myView address currentTime =
  Html.div
    [ generalStyle ]
    [ toString currentTime |> Html.text ]

myUpdate action model = model

generalStyle : Html.Attribute
generalStyle =
  Attr.style
    [ ( "font-size", "16px" )
    , ( "font-family", "monospace" )
    , ( "width", "700px" )
    ]
