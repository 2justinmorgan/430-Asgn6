classdef boolC
    properties
       bool {boolean}
    end
    methods
        function obj = boolC(val)
            if nargin == 1
                obj.bool = val;
            end
        end
    end
end