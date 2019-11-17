classdef ExprC < numC & strC & boolC & idC & ifC & lamC & appC
    properties
        expr {class}
    end
    methods
        function obj = ExprC(constrExpr)
            if nargin == 1
                obj.expr = constrExpr;
            end
        end
    end
end
