{ pkgs, ... }: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.pietro = {
      isNormalUser = true;
      description = "Pietro";
      extraGroups = [ "networkmanager" "wheel" "input" "libvirtd" ];
      packages = with pkgs; [];
    };
  };

}
