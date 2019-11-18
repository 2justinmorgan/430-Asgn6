function newEnv = extendEnv(env, clovArgs, appArgs)
% This may have bugs!! Not tested yet. But something like this shouold work
    newKeyset = clovArgs;
    newValueset = arrayfun(interp, appArgs);
    extEnv = containers.map(newKeyset, newValueset);
    newEnv = [extEnv; env]; 
end