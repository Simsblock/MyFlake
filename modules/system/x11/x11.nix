{ pkgs, ...}:{
    imports = [
        ./components/pipewire.nix
        ./components/dbus.nix
    ];

    #configure X11
    services.xserver = {
        enable = true;
        xkb = {
            layout = "us";
            variant = "";
        };
        displayManager = {
            autoLogin = {
                enable = true;
                user = "simsblock";
            };
        };
    };
}
