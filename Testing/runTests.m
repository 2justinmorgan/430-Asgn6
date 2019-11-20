function runTests()
    if nargin == 0
        checkEqual(numC(4), numC(4));
        
        %evaluate evaluatePrimop
        checkEqual(evaluatePrimop("+", {numV(4), numV(5)}), numV(9));
        checkEqual(evaluatePrimop("equal?", {numV(3), numV(2)}), boolV(false));
        checkEqual(evaluatePrimop("-", {numV(5), numV(2)}), numV(3));
        checkEqual(evaluatePrimop("*", {numV(2), numV(3)}), numV(6));
        checkEqual(evaluatePrimop("/", {numV(8), numV(4)}), numV(2));
        
        
        %test numopV
        checkEqual(numopV("<=", {numV(4), numV(4)}), boolV(true));
        checkEqual(numopV("*", {numV(3), numV(7)}), numV(21));
        
        %test interp
        checkEqual(interp(numC(3), makeTopEnv()), numV(3));
        checkEqual(interp(appC(idC("+"), [numC(4), numC(2)]), makeTopEnv()), numV(6));
        checkEqual(interp(appC(lamC(["a", "b"], idC("b")), [numC(4), numC(2)]), makeTopEnv()), ...
            numV(2));
        checkEqual(interp(appC(lamC(["a", "b", "c", "d"], idC("b")), [numC(4), numC(2), numC(5), ...
                numC(4)]), makeTopEnv()), ...
            numV(2));
        checkEqual(interp(appC(lamC(["a", "b", "c", "d"], appC(idC("+"), [idC("a"), idC("b")])), ...
                [numC(4), numC(2), numC(5), numC(4)]), makeTopEnv()), ...
            numV(6));
        
        %test extendenv
    end
end