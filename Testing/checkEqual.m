function checkEqual(actual, expected)
    if nargin == 2
        if ~isequal(actual, expected)
            disp("ACTUAL:");
            disp(actual);
            disp("EXPECTED:");
            disp(expected);
            error("not equal, see above (this is a good error message)");
        end
    end
end
