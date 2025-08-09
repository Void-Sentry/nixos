{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  programs.firefox.enable = false;
  programs.steam.enable = true;

  services.flatpak.enable = false;

  environment.systemPackages = with pkgs; [
    terraform
    nomad
    wireguard-tools
    consul
    nano
    linuxKernel.packages.linux_zen.zenpower
  ];
}