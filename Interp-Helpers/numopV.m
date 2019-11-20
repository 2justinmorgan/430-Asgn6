function value = numopV(op, interpedArgs)
    if nargin == 2
        left = interpedArgs{1};
        right = interpedArgs{2};
        if (ismember("numV", {class(left), class(right)}))
            switch op
                case "+"
                    value = numV(left.number + right.number);
                case "-"
                    value = numV(left.number - right.number);
                case "*"
                    value = numV(left.number * right.number);
                case "/"
                    value = numV(left.number / right.number);
                case "<="
                    value = boolV(left.number <= right.number);
                otherwise
                    disp(op)
                    error("invalid op");
            end
        else
            disp(["op: ",op,"left: ",class(left), " right: ",class(right)]);
            error("vals must be numV for numeric ops");
        end
    end
end