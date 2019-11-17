classdef numC
    properties
       Value {double}
    end
    methods
        function obj = numC(number)
            if nargin == 1
                obj.Value = number;
            end
        end
    end
end