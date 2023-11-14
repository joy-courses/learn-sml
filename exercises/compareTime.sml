fun timeBefore((h1, m1, t1), (h2, m2, t2)) = 
    

timeBefore((1, 59, "AM"), (2, 40, "PM")) = true;
timeBefore((1, 59, "PM"), (2, 40, "PM")) = true;
timeBefore((1, 59, "PM"), (2, 40, "AM")) = false;
timeBefore((1, 59, "AM"), (2, 40, "AM")) = true;