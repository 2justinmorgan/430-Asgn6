classdef strC
    properties
       str {string}
    end
    methods
        function obj = strC(val)
            if nargin == 1
                obj.str = val;
            end
        end
    end
end