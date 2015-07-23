import Html exposing (h1, div, button, text)
import Html.Events exposing (onClick)
import StartApp

type Action = Inc | Dec

update action count =
  -- todo

view address count =
  div [] [
    h1 [] [text (toString count)],
    button [ onClick address Inc ] [text "+"],
    button [ onClick address Dec ] [text "-"]
  ]

main = StartApp.start { model = 0, update = update, view = view }
