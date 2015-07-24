module CounterPair where

import Counter
import Array.Helpers exposing(get, set, array)
import Html exposing (div)
import StartApp

update action counts =
  -- todo

view address counts =
  -- todo

main = StartApp.start { model = array [0, 0], update = update, view = view }

