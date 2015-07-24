module Array.Helpers (get, set, array) where

import Array

array = Array.fromList

get array index  = case Array.get index array of Just int -> int

set array index value = Array.set index value array
