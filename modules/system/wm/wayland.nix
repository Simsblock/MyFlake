{ config, pkgs, ... } : {
    imports = [
        ./components/pipewire.nix
        ./components/dbus.nix
    ];

    environment.systemPackages = with pkgs; [
        wayland
        waydroid #allows for android applications to run on wayland
    ];

    #xwayland for x11 applications
    services.xserver = {
        enable = true;
        xkb = {
            layout = "us";
            variant = "";
        };
    };
}
