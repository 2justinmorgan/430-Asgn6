function newEnv = extendEnv(env, clovArgs, appArgs)
    extEnv = containers.Map(clovArgs, appArgs);
    newEnv = [extEnv; env]; 
end