classdef numC < handle
    properties
       number {double}
    end
    methods
        function obj = numC(val)
            if nargin == 1
                obj.number = val;
            end
        end
    end
end