function interpretedArgs = evalArgs(appArgs, env)
if nargin == 2
    interpretedArgs = {};
    for arg = appArgs
        interpretedArgs{end+1} = interp(arg, env);
    end
end