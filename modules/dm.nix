{ ... }:

{
  hardware.graphics.enable32Bit = true;
  hardware.graphics.enable = true;

  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;
}