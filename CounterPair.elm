module CounterPair where

import Counter
import Array.Helpers exposing(get, set, array)
import Html exposing (div)
import StartApp

type Action = Counter1 Counter.Action | Counter2 Counter.Action

update action counts =
  case action of
    Counter1 act ->
      let newCount = Counter.update act (counts `get` 0)
        in set counts 0 newCount
    Counter2 act ->
      let newCount = Counter.update act (counts `get` 1)
        in set counts 1 newCount

view address counts =
  div []
    [ Counter.view (Signal.forwardTo address Counter1) (counts `get` 0)
    , Counter.view (Signal.forwardTo address Counter2) (counts `get` 1)
    ]

main = StartApp.start { model = array [0, 0], update = update, view = view }

