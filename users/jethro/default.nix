{lib, pkgs, ...}:
let
  name = "Jethro Kuan";
  email = "jethrokuan95@gmail.com";
in
{
  home-manager.users.jethro = {
    imports = [ ../profiles/core ];
    
    programs.firefox.enable = true;
    programs.git = {
      enable = true;
      userName = name;
      userEmail = email;
    };
  };

  users.users.jethro = {
    uid = 1000;
    description = name;
    isNormalUser = true;
    password = "";
    extraGroups = [ "wheel" "input" "networkmanager" ];
  };
}
