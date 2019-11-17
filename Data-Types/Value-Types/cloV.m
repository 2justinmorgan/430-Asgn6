classdef cloV
    properties
       clovArgs {class} % should be of type "cell" or an array
       body {class}
       env {class} % list of Bindings class
    end
    methods
        function obj = cloV(constrArgs, constrBody, constrEnv)
            if nargin == 3
                obj.clovArgs = constrArgs;
                obj.body = constrBody;
                obj.env = constrEnv;
            end
        end
    end
end