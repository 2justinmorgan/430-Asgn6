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
            interpretedArgs = evalArgs(expr.appArgs, env);
            switch class (funval)
                case 'cloV'
                    newEnv = extendEnv(funval.env, funval.clovArgs, interpretedArgs);
                    value = interp(funval.body, newEnv);
                case 'primopV'
                    value = evaluatePrimop(funval.op, interpretedArgs);
                otherwise
                    disp(funval);
                    error("Unexpected function call format");
            end
        otherwise
            disp(expr);
            error("invalid ExprC");
    end 
end