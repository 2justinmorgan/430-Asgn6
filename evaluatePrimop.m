function  value = evaluatePrimop(operation, interpretedArgs)
switch(operation)
    case "+"
        switch class(interpretedArgs(1))
            case 'numV'
                switch class(interpretedArgs(1))
                    case 'numV'
                        value = interpretedArgs(1).number + interpretedArgs(2).number
                    otherwise
                        error("Second addition term must be an int");
                end
            otherwise
                error("First addition term must be an int");
        end
    otherwise
        error("No such Primop Case");
end
end