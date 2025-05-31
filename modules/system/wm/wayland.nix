{ config, pkgs, ... } : {
    imports = [
        ./x11.nix
    ];

    environment.systemPackages = with pkgs; [
        wayland
        waydroid #allows for android applications to run on wayland
    ];
}
