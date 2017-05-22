module Int =
struct
  type t = int
  let compare = fun x y -> x - y
end ;;

Exception Not_found ;;

module ISet = Set.Make(Int);;
module IMap = Map.Make(Int);;
(* type graphe *)
type graph = ISet.t IMap.t;; (* un map de set (set*integer *)

let addvertex i g = ISet.add i ;; 

let addedge u v g = match g with 
  |
  |




(*initialisation  *)
let s = ISet.empty;;
let s = ISet.add 1 ;;
let s = ISet.add 8 ;;
let s = ISet.add 3 ;;
let s = ISet.add 55 ;;
(*affichage du set *)
let printset s = ISet.iter print_int s ;;

(*let foldnub l = 
List.fold_left ( match l with 
| e::ll -> if acc <> e then   )  acc l  *)
(*let addvertex a  = Iset.add a ;;*)

let rec nub_aux l se = 
match l with 
|x::xs -> if ISet.mem x se then nub_aux xs se else ( (* si la tete de l est dans le set alors on ignore, sinon on ajoute x à ...*)
  x::(nub_aux xs (ISet.add x se)))
|[] -> []

let nub l = nub_aux l ISet.empty ;;

let rec from_list l = match l with 
  |x::xs ->  ISet.add x (from_list xs )
  |[] -> ISet.empty



