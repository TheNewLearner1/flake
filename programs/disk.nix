{pkgs, config, lib, ...}:{
  programs.gnome-disks.enable = true;
  services.udisks2.enable = true;
}
