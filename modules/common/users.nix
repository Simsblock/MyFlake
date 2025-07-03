# nixos/modules/common/users.nix
{ config, pkgs, ... }:
{
  # Don't forget to set a password with ‘passwd’.
  users.users.simsblock = {
    isNormalUser = true;
    description = "Simsblock";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [ # not ideal
      kdePackages.kate
    #  thunderbird
    ];
  };
}
