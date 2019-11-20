function newEnv = extendEnv(env, clovArgs, appArgs)
% This may have bugs!! Not tested yet. But something like this shouold work
    extEnv = containers.Map(clovArgs, appArgs);
    disp(appArgs)
    newEnv = [extEnv; env]; 
end