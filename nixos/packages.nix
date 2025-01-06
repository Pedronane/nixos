{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = ["python-2.7.18.8" "electron-25.9.0"];
  };

  environment.systemPackages = with pkgs; [
    # Desktop apps
    kitty
    rofi-wayland
    mpv
    (discord.override {withVencord = true;}) # vencord
    obsidian
    firefox
    discord
    dolphin
    thunderbird
    ghostty
    polymc


    # Coding stuff
    gcc
    nodejs
    python
    (python3.withPackages (ps: with ps; [ requests ]))

    # CLI utils
    neofetch
    wget
    git
    fastfetch
    htop
    ntfs3g
    swww
    yazi

    # Xorg stuff
    #xterm
    #xclip
    #xorg.xbacklight

    # Wayland stuff
    xwayland
    wl-clipboard
    cliphist

    # WMs and stuff
    hyprland
    xdg-desktop-portal-hyprland
    waybar
    dunst
    libnotify
    networkmanagerapplet

    # Sound
    pipewire
    pulseaudio


    # Other
    home-manager
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    otf-font-awesome
  ];
}
