# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{config, pkgs, inputs, old_pkgs, unstable_pkgs, lib, ... }:
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./packages/stable/stable.nix
      ./packages/unstable/unstable.nix
      ./user/settings.nix
      ./systemd/systemd.nix
    ];
  system.stateVersion = "24.11"; # Did you read the comment?

}
