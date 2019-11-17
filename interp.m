function value = interp(expr)
if nargin == 1
    switch class(expr)
        case 'numC'
            value = expr.number;
        case 'strC'
            value = expr.str;
        case 'idC'
            value = expr.sym;
        case 'boolC'
            value = expr.bool;
        otherwise
            value = "not implemented yet";
    end 
end
            