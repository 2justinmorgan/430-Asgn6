classdef idC < handle
    properties
       symbstr {string} % couldn't be sym because i.e. '+' is not allowed
    end
    methods
        function obj = idC(val)
            if nargin == 1
                obj.symbstr = val;
            end
        end
        function valid = isValid(obj)
            invalid=["var", "if", "lam", "="]
            if ~any(strcmp(invalid, obj.symbstr))
                valid = true
            else
                valid = false
            end
        end
    end
end