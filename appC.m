classdef appC
    properties
        func {class} % ExprC
        appArgs {class} % Listof ExprC
    end
    methods
        function obj = appC(constrFunc, constrArgs)
            if nargin == 2
                obj.func = constrFunc;
                obj.appArgs = constrArgs;
            end
        end
    end
end
            