module Int =
struct
  type t = int
  let compare = fun x y -> x - y
end ;;
module ISet = Set.Make(Int);;
module IMap = Map.Make(Int);;
type graph = ISet.t IMap.t;;

let s = ISet.empty;;
let s = ISet.add 1 ;;
let s = ISet.add 33 ;;
let s = ISet.add 41;;
let printset s = ISet.iter print_int s ;;
(*let __ = printset s ;;*)
let p = IMap.add 1 41;;
let p = IMap.add 1 33;;
(*let range a b ->
  match graph 
*)
let addf a  = Iset.add a ;;
