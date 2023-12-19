# What is specified in the next line are the modules we expect to be here. home-manager here is passed by flake.nix
{ home-manager, ... }:
{
  imports = [
    home-manager.nixosModules.home-manager
    ./hosts
    ./modules
    ./users
  ];
}