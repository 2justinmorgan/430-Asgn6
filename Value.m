classdef Value < numV & cloV & boolV & strV & primopV
    properties
        value {class} % aka Value
    end
    methods
        function obj = Value(constrValue)
            if nargin == 1
                obj.value = constrValue;
            end
        end
    end
end