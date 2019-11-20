function runTests()
    if nargin == 0
        checkEqual(interp(numC(3), makeTopEnv()), numV(3));
        checkEqual(numC(4), numC(4));
        checkEqual(evaluatePrimop("+", [numV(4), numV(5)]), numV(9));
        checkEqual(interp(appC(idC("+"), [numC(4), numC(2)]), makeTopEnv()), numV(6));
        checkEqual(interp(appC(lamC(["a", "b"], idC("b")), [numC(4), numC(2)]), makeTopEnv()), numV(2));
        checkEqual(interp(appC(lamC(["a", "b", "c", "d"], idC("b")), [numC(4), numC(2), numC(5), numC(4)]), makeTopEnv()), numV(2));
        checkEqual(interp(appC(lamC(["a", "b", "c", "d"], appC(idC("+"), [idC("a"), idC("b")])), [numC(4), numC(2), numC(5), numC(4)]), makeTopEnv()), numV(6));
    end
end