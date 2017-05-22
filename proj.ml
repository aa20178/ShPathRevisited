
type ('a, 'b) heap = 
|Empty 
|Node of (int * 'a *'b * ('a, 'b) heap*  ('a, 'b) heap)
;;

(* a en prio , b en value *)

let rec cardinal h = 
match h with
|Empty -> +0 
|Node  ( i,a, b,h2,h3)-> 1 + cardinal h2 + cardinal h3 ;; 

let is_null h = let ctest = cardinal h in if ctest=0 then true else false;;

let singleton p v = Node(1,p,v,Empty, Empty);;
let insert p v h =  match h with 
  |Empty -> singleton p v 
  |Node ( i,p2, v2,h2,h3) -> if p>p2 then else 
 
