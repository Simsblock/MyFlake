{ config, pkgs, ... }:

{
  # compatible home-manager version
  home.stateVersion = "25.05";
  # user data
  home.username = "simsblock";
  home.homeDirectory = "/home/simsblock";

  # programs
  programs ={
    home-manager.enable = true; # home-manager manages itself
    git = {
      enable = true;
      userName = "Simsblock";
      userEmail = "@mail.com";
      extraConfig = {
        init.defaultBranch = "main";
    	};
    };
  };

  # packages
  home.packages =  with pkgs; [
    hello         # hello -> "Hello World"
    fastfetch     # fastfetch -> sysdata
  ];

  # TODO HAVENT LOOKED AT THINGS BELOW THIS YET!!!

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/nix/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };
}
