{ bundlerEnv, ruby, dependencies ? [] }:

bundlerEnv {
    name = "glitsch-bundler-env";
    inherit ruby;
    builtInputs = dependencies;
    gemfile  = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset   = ./gemset.nix;
}
