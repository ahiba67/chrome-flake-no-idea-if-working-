{
 description = "flake of somekind";

 inputs = {
  nixpkgs = {
     url = "github:NixOS/nixpkgs/nixos-23.11";
  };
 };

 outputs = { self, nixpkgs }:

let
pkgs = import nixpkgs {
 system = "x86_64-linux";
 config.allowUnfree = true;
  };
in
{
    devshells.default = pkgs.mkShell {
        buildInputs = [
            pkgs.google-chrome 
            ]
          };
        };
     }
        
    
