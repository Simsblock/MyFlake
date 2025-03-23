{ pkgs, ...}:{
    imports = [
        ./x11.nix
    ];

    #enable plasma
    services.displayManager.sddm.enable = true;
    services.desktopManager.plasma6.enable = true;
}
