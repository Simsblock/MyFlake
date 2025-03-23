{ pkgs, ...}:{
    imports = [];

    #configure X11
    services.xserver = {
        enable = true;
        xkb = {
            layout = "us";
        };
        displayManager = {
            autoLogin = {
                enable = true;
                user = "nix";
            };
        };
    };
}
