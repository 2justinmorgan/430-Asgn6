function env = makeTopEnv()
    if nargin == 0
        env = {
            Binding(idC("true"), boolV(true)),
            Binding(idC("false"), boolV(false)),
            Binding(idC("+"), primopV("+")),
            Binding(idC("-"), primopV("-")),
            Binding(idC("*"), primopV("*")),
            Binding(idC("/"), primopV("/")),
            Binding(idC("<="), primopV("<=")),
            Binding(idC("equal?"), primopV("equal?"))};
    end
end
        
