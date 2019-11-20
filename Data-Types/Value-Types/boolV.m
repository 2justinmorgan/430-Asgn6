classdef boolV < handle
    properties
       bool {boolean}
    end
    methods
        function obj = boolV(constrBool)
            if nargin == 1
                obj.bool = constrBool;
            end
        end
    end
end