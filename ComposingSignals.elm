import Graphics.Element exposing (..)
import Mouse
import Signal exposing(..)
import Time exposing(..)
import Window

display : Int -> Int -> Int -> Int -> Float -> String
display width height x y time =
    toString width ++ "x" ++ toString height
    ++ " - "  ++ toString x
    ++ " - "  ++ toString y
    ++ " - "  ++ toString time


main : Signal Element
main =
  show <~ (display <~ Window.height ~ Window.width ~ Mouse.x ~ Mouse.y ~ (Time.every Time.second))
