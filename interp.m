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
                    interpretedArgs = [];
                    for indx = expr.appArgs
                        interpretedArgs = [interpretedArgs, interp(indx, env)];
                    end
                    newEnv = extendEnv(env, funval.clovArgs, interpretedArgs);
                    value = interp(funval.body, newEnv)
                case 'primopV'
                    interpretedArgs = [];
                    for indx = expr.appArgs
                        interpretedArgs = [interpretedArgs, interp(indx, env)];
                    end
                    value = evaluatePrimop(funval.op, interpretedArgs);
                otherwise
                    error("Unexpected function call format")
            end
        otherwise
            value = "not implemented yet";
    end 
end