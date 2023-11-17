fun allChangeAcc(coins, coinvals, 0, list) = coins::list
| allChangeAcc(coins, [], amount, list) = list
| allChangeAcc(coins, c::coinvals, amount, list) =
    if amount < 0 then list
    else allChangeAcc(coins, coinvals, amount, allChangeAcc(c::coins, c::coinvals, amount-c, list));
    
fun allChange(coins, coinvals, amount) = allChangeAcc(coins, coinvals, amount, []);

allChange([], [5,2], 16);
allChange([], [25,10,2,1], 43);