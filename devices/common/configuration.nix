{ config, lib, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command flakes" ];

  environment.systemPackages = with pkgs; [
    vim wget git fish strace binutils gcc gnumake htop lshw
  ];

  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      (nerdfonts.override {
        fonts = [
          "DroidSansMono"
        ];
      })
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji
    ];
    fontconfig = {
      defaultFonts.monospace = [ "DroidSansMono Nerd Font Mono" ];
    };
  };

  # In China mainland, sometimes we cannot connect GitHub.
  # We add hosts to solve this problem.
  # networking.hosts = {
  #   "140.82.116.4" = [ "github.com" ];
  # };
}
