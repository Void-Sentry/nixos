{ ... }:

{
  hardware.graphics.enable32Bit = true;
  hardware.graphics.enable = true;

  services.xserver.enable = false;

  programs.xwayland.enable = true;

  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;

  services.desktopManager.plasma6.enable = true;
}