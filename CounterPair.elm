module CounterPair where

import Counter
import Array.Helpers exposing(get, set, array)
import Html exposing (div)
import StartApp

type Action = Counter1 Counter.Action | Counter2 Counter.Action

update action counts =
  -- todo

view address counts =
  div []
    [ Counter.view (Signal.forwardTo address Counter1) (counts `get` 0)
    , Counter.view (Signal.forwardTo address Counter2) (counts `get` 1)
    ]

main = StartApp.start { model = array [0, 0], update = update, view = view }

