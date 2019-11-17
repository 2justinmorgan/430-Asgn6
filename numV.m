classdef numV
    properties
       number {double}
    end
    methods
        function obj = numV(val)
            if nargin == 1
                obj.number = val;
            end
        end
    end
end