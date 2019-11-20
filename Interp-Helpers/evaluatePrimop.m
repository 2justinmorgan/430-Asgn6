function  value = evaluatePrimop(op, interpretedArgs)
if nargin == 2
    if (ismember(op, ["+","-","*","/","<="]))
        value = numopV(op, interpretedArgs);
    end
    if (ismember(op, ["equal?"]))
        leftClass = class(interpretedArgs{1});
        rightClass = class(interpretedArgs{2});
        if (ismember(leftClass, ["primopV","cloV"]) || ...
            ismember(rightClass, ["primopV","cloV"]))
            disp("here");
            disp(interpretedArgs(1));
            disp(interpretedArgs(2));
            error("Can not use primopV or cloV with 'equal?' op");
        end
        value = boolV(isequal(interpretedArgs(1), interpretedArgs(2)));
    end
end