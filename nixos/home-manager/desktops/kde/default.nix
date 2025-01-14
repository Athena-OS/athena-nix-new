{ lib, pkgs, config, ... }:
let
  plasma-packages = with pkgs.libsForQt5; [
    bluez-qt
    discover
    dolphin
    elisa
    gwenview
    kate
    kcalc
    kde-gtk-config
    kdeconnect-kde
    kdeplasma-addons
    kfind
    kinfocenter
    kmenuedit
    kpipewire
    kscreen
    plasma-browser-integration
    plasma-desktop
    plasma-nm
    plasma-pa
    plasma-systemmonitor
    plasma-thunderbolt
    plasma-vault
    plasma-welcome
    plasma-workspace
    polkit-kde-agent
    spectacle
    systemsettings
  ];
  fontList = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.symbols-only
  ];
in {
  config = lib.mkIf (config.athena.desktopManager == "kde") {
    # ---- System Configuration ----
    services.xserver = {
      enable = true;
      desktopManager.plasma5 = {
        enable = true;
        kwinrc = {
          "Plugins" = {
            blurEnabled = true;
            contrastEnabled = true;
            diminactiveEnabled = true;
            forceblurEnabled = true;
            invertEnabled = true;
            magiclampEnabled = true;
            slidebackEnabled = true;
            wobblywindowsEnabled = true;
          };

          "org.kde.kdecoration2" = {
            BorderSize = "None";
            BorderSizeAuto = false;
            ButtonsOnLeft = "XIA";
          };
        };
      };
    };

    environment = {
      pathsToLink = [ "/share/backgrounds" ]; # TODO: https://github.com/NixOS/nixpkgs/issues/47173
      systemPackages = plasma-packages;
    };

    xdg.portal = {
      enable = true;
      extraPortals = with pkgs.libsForQt5; [
        xdg-desktop-portal-kde
      ];
    };

    # ---- Home Configuration ----
    home-manager.users.${config.athena.homeManagerUser} = { pkgs, ...}: {
      home.packages = fontList;

      # It copies "./config/menus/gnome-applications.menu" source file to the nix store, and then symlinks it to the location.
      xdg.configFile."menus/applications-merged/applications-kmenuedit.menu".source = ./config/menus/applications-merged/applications-kmenuedit.menu;

      services.kdeconnect.enable = true;
    };
  };
}
