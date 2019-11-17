function r = rec(x)
if nargin == 1
    if x <= 0
        r = 0;
    else
        r = 1 + rec(x - 1);
    end
end