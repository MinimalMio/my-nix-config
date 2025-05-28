{ ... }:

{
  services.xserver.enable = true;
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.excludePackages = [ pkgs.xterm ];
  # services.xserver.desktopManager.xfce.enable = true;
  # services.displayManager.defaultSession = "xfce";

  services.xserver.xkb.layout = "us";


  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  # services.printing.enable = true;
  # services.libinput.enable = true;

  services.openssh = {
    enable = true;
  };
}
