function env = makeTopEnv()
    if nargin == 0
        env = {
            Binding(idC("+"), primopV("+")),
            Binding(idC("-"), primopV("-")),
            Binding(idC("*"), primopV("*")),
            Binding(idC("/"), primopV("/")),
            Binding(idC("<="), primopV("<=")),
            Binding(idC("equal?"), primopV("equal?"))};
    end
end
        
