classdef primopV < handle
    properties
       op {class}
    end
    methods
        function obj = primopV(constrOp)
            if nargin == 1
                obj.op = constrOp;
            end
        end
    end
end