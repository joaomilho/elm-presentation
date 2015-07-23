import Html exposing (h1, div, button, text)
import Html.Events exposing (onClick)
import StartApp

update action count =
  -- todo

view address count =
  -- todo

main = StartApp.start { model = 0, update = update, view = view }
