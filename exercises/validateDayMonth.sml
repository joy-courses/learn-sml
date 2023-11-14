(* Complete the expression *)
fun isValidDate(d, m) =  
  case m of 
    "January" => 0 < d andalso d < 32
    | "Feburary" => 0 < d andalso d < 32
    | "March" => 0 < d andalso d < 32
    | "April" => 0 < d andalso d < 32
    | "May" => 0 < d andalso d < 32
    | "June" => 0 < d andalso d < 32
    | "July" => 0 < d andalso d < 32
    | "August" => 0 < d andalso d < 32
    | "September" => 0 < d andalso d < 32
    | "October" => 0 < d andalso d < 32
    | "November" => 0 < d andalso d < 32
    | "December" => 0 < d andalso d < 32
    | _ => false
