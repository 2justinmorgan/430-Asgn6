classdef ifC
    properties
       testVal {class}
       thenVal {class}
       elseVal {class}
    end
    methods
        function obj = ifC(testval, thenval, elseval)
            if nargin == 3
                obj.testVal = testval;
                obj.thenVal = thenval;
                obj.elseVal = elseval;              
            end
        end
    end
end