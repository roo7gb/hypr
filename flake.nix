# hypr/flake.nix

{
  description = "roo7gb hyprland distro";

  inputs = {
    # use unstable
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # use bleeding edge hyprland
    hyprland.url = "github:hyprwm/Hyprland";

    # use lasslus wrappers for dist
    wrappers.url = "github:lasslus/wrappers";

    # browser of choice
    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, wrappers, ... } @ inputs: let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
    hypr = inputs.hyprland.${system}.default;
    defaultRuntimePkgs = let
      input = {
        package,
        output ? "default",
      }: 
        inputs.${package}.packages.${system}.${output};
    in {
      inherit
        (pkgs)
        wezterm
        yazi
        quickshell
        awww
        hyprpolkitagent
        pavucontrol
        hyprlock
        ;
      zen-browser = input { package = "zen-browser"; };
    };

    mkWrapped = {
      pkgs,
      package,
      runtimePackages,
      exePath,
      flags,
      env,
    }:
      (wrappers.lib.wrapPackage {
        inherit env pkgs package exePath flags;
      }).overrideAttrs (old: {
        passthru = (old.passthru or {}) // { inherit runtimePackages; };
      });
  in {
    lib.defaultRuntimePkgs.${system} = defaultRuntimePkgs;

    packages.${system}.default = pkgs.lib.makeOverridable mkWrapped {
      inherit pkgs;
      package = hypr;
      runtimePackages = defaultRuntimePkgs;
      exePath = pkgs.lib.getExe hypr;
      env."MODULES_ROOT" = ./modules;
      flags."--config" = ./hyprland.lua;
    };
  };
}
