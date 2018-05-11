module Pivot.Create exposing (..)

import Pivot.Get exposing (..)
import Pivot.Types exposing (..)
import Pivot.Utilities exposing (..)


fromList : List a -> Maybe (Pivot a)
fromList l =
    case l of
        hd :: tl ->
            fromCons hd tl
                |> Just

        [] ->
            Nothing


fromCons : a -> List a -> Pivot a
fromCons x xs =
    Pivot x ( [], xs )


singleton : a -> Pivot a
singleton =
    \a -> fromCons a []
