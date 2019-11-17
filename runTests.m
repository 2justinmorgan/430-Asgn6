function runTests()
    if nargin == 0
        checkEqual(interp(numC(3), makeTopEnv()), numV(3));
        checkEqual(numC(4), numC(4));
        checkEqual(idC("one"), idC("two"));
    end
end