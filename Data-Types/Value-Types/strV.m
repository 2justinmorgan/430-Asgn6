classdef strV < handle
    properties
       str {string}
    end
    methods
        function obj = strV(constrStr)
            if nargin == 1
                obj.str = constrStr;
            end
        end
    end
end