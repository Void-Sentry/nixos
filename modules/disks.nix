{ ... }:

{
  fileSystems."/media/GAYMES" = {
    device = "/dev/disk/by-uuid/40116d43-8e6a-4fcf-b7f1-3b8abf3d10c4";
    fsType = "f2fs";
    options = [ "nofail" ];
  };
}