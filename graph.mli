
module IntSet = Set.Make (Int) ;;
module IntMap= Map.Make (Int) ;;
type graph = IntSet.t IntMap.t ;;

let range a b = match 
