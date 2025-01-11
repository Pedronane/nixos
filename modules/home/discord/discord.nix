{ pkgs, ... }:
{
  home.packages = with pkgs; [
    vesktop
  ];
  xdg.configFile."Vencord/themes/gruvbox.theme.css".source = ./gruvbox.css;
}
