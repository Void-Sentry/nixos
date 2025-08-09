{ pkgs, ... }:

{
  users.users.tux = {
    isNormalUser = true;
    description = "tux";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      mangohud
      brave
      discord
      code-cursor
      gh
      docker_28
      bottles
      git
      kdePackages.kate
      kdePackages.bluedevil
      kdePackages.bluez-qt
      kdePackages.plasma-workspace
    ];
  };
}