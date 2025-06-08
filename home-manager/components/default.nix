{ ... }:

{
  imports = [
    ./git
    ./nixvim
  ];

  home-manager.backupFileExtension = "*.bak";
}
