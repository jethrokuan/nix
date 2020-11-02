{ pkgs, ... }: 
{
  programs.emacs.enable = true;
  services.emacs.enable = true;
  home.packages = with pkgs; [
    ripgrep
    fd
    sqlite # for emacsql-sqlite
    make
  ];
}
