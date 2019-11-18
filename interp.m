function value = interp(expr, env)
if nargin == 2
    switch class(expr)
        case 'numC'
            value = numV(expr.number);
        case 'strC'
            value = strV(expr.str);
        case 'idC'
            value = lookup(env, expr.symbstr);
        case 'boolC'
            value = boolV(expr.bool);
        case 'lamC'
            value = cloV(expr.lamArgs, expr.body, env);
        case 'appC'
            funval = interp(expr.func, env);
            switch class (funval)
                case 'cloV'
                    newEnv = extendEnv(env, funval.clovArgs, expr.appArgs)
                    interp(funval.body, newEnv)
                case 'primopV'
                    %TODO
                otherwise
                    error("Unexpected function call format")
            end
        otherwise
            value = "not implemented yet";
    end 
end