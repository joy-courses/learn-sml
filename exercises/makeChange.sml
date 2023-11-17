fun allChange(coins, coinvals, 0, res) = coins :: res
    | allChange(coins, [], amount, res) = res
    | allChange(coins, c::coinvals, amount, res) =
        if amount < 0 then res
        else allChange(c::coins, c::coinvals, amount-c, allChange(coins, coinvals, amount, res));

allChange([], [5,2], 16, []);
allChange([], [25,10,2,1], 43, []);

e