fun timeBefore((h1, m1, a1), (h2, m2, a2)) = if a1 = "AM" andalso a2 = "PM"
  then true else if a1 = a2 andalso h1 < h2 then true
                                                 else if h1 = h2 andalso m1 <
                                                 m2 then true
                                                      else false;

timeBefore((1, 59, "AM"), (2, 40, "PM")) = true;
timeBefore((1, 59, "PM"), (2, 40, "PM")) = true;
timeBefore((1, 59, "PM"), (2, 40, "AM")) = false;
timeBefore((1, 59, "AM"), (2, 40, "AM")) = true;
