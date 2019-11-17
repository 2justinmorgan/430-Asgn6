classdef Binding
    properties
       Var {class} % aka idC. had issues converting idC->string
       Val {class}
    end
    methods
        function obj = Binding(var, val)
            if nargin == 2
                obj.Var = var;
                obj.Val = val;
            end
        end
    end
end