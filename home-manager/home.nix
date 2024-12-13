{

  imports = [
    ./zsh.nix
    ./modules/bundle.nix
  ];

  home = {
    username = "pietro";
    homeDirectory = "/home/pietro";
    stateVersion = "23.11";
  };
}
