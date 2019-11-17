classdef idC
    properties
       symbstr {string} % couldn't be sym because i.e. '+' is not allowed
    end
    methods
        function obj = idC(val)
            if nargin == 1
                obj.symbstr = val;
            end
        end
    end
end