classdef lamC
    properties
       lamArgs {class} % should be of type "cell" or an array
       body {class}
    end
    methods
        function obj = lamC(constrArgs, constrBody)
            if nargin == 2
                obj.lamArgs = constrArgs;
                obj.body = constrBody;
            end
        end
    end
end