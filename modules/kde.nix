{ pkgs, ... }:

{
  # Habilita o KDE Plasma 6
  services.desktopManager.plasma6.enable = true;

  # Define Breeze como tema do SDDM (login). O enable já está em dm.nix
  services.displayManager.sddm = {
    theme = "breeze";
    wayland.enable = true;
  };

  # Garante Breeze como estilo padrão para aplicativos Qt
  qt = {
    enable = true;
    platformTheme = "kde";
    style = "breeze";
  };

  # Pacotes de temas Breeze (Qt e GTK) e ícones
  environment.systemPackages = with pkgs; [
    kdePackages.breeze
    kdePackages.breeze-gtk
    kdePackages.breeze-icons
  ];

  # Define defaults de aparência do Plasma para todos os usuários via /etc/xdg
  environment.etc."xdg/kdeglobals".text = ''
    [General]
    ColorScheme=BreezeDark
    Name=Breeze Dark
    widgetStyle=Breeze

    [KDE]
    LookAndFeelPackage=org.kde.breezedark.desktop

    [Icons]
    Theme=breeze-dark
  '';
}
