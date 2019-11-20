function env = makeTopEnv()
    keyset = [
        "true", 
        "false", 
        "+", 
        "-",
        "*", 
        "/", 
        "<=", 
        "equal?"];
    valueset = {
        boolV(true), 
        boolV(false), 
        primopV("+"), 
        primopV("-"),
        primopV("*"), 
        primopV("/"), 
        primopV("<="), 
        primopV("equal?")};
    env = containers.Map(keyset, valueset);
end
        
