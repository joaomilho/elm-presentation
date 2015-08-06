import Html exposing (Html, h1, div, button, text)
import Html.Events exposing (onClick)
import Signal exposing (Signal, Address)

type Action = NoOp | Inc | Dec

update : Action -> Int -> Int
update action count =
  case action of
    Inc -> count + 1
    Dec -> count - 1

view : Address Action -> Int -> Html
view address count =
  div [] [
    h1 [] [text (toString count)],
    button [ onClick address Inc ] [text "+"],
    button [ onClick address Dec ] [text "-"]
  ]

currentCount : Signal Int
currentCount =
  Signal.foldp update 0 actions.signal

actions : Signal.Mailbox Action
actions =
  Signal.mailbox NoOp

main : Signal Html
main =
  Signal.map (view actions.address) currentCount
