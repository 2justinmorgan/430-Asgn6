classdef idC
    properties
       symb {sym}
    end
    methods
        function obj = idC(val)
            if nargin == 1
                obj.symb = val;
            end
        end
    end
end