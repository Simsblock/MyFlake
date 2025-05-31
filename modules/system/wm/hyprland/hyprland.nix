{config, pkgs, ...}: {
    imports = [
        ../wayland.nix
        ./waybar/waybar.nix
    ];

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    # set the flake package
    # package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    # portalPackage = inputs.hyprland.packages.${pkgs.system}.xdg-desktop-portal-hyprland;
  };
}
