function value = interp(expr, env)
if nargin == 2
    switch class(expr)
        case 'numC'
            value = numV(expr.number);
        case 'strC'
            value = strV(expr.str);
        case 'idC'
            % lookup env
            % value = expr.sym;
            if expr.isValid
            else
                error("The given idC was invalid")
            end
        case 'boolC'
            value = boolV(expr.bool);
        otherwise
            value = "not implemented yet";
    end 
end