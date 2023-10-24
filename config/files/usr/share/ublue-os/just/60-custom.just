!include /usr/share/ublue-os/just/100-bling.just

# Include some of your custom scripts here!

# Install Productivity and Communications apps
install-apps-productivity:
  flatpak install -y --system \\
    com.google.Chrome \\
    com.seafile.Client \\
    com.simplenote.Simplenote \\
    org.signal.Signal \\

# Install Creative Media Apps
install-apps-creative:
  flatpak install -y --system \\
    nl.hjdskes.gcolor3 \\
    org.audacityteam.Audacity \\
    org.gimp.GIMP \\
    org.inkscape.Inkscape \\
    org.kde.kdenlive \\
    org.kde.krita

# Install Other misc apps for my home users
install-apps-misc:
  flatpak install -y --system \\
    com.slack.Slack \\
    org.gnome.Firmware \\


# Give browsers permission to create PWAs (Progressive Web Apps)
install-pwa-flatpak-overrides:
  flatpak override --system --filesystem=~/.local/share/applications --filesystem=~/.local/share/icons com.google.Chrome
  flatpak override --system --filesystem=~/.local/share/applications --filesystem=~/.local/share/icons com.brave.Browser
  flatpak override --system --filesystem=~/.local/share/applications --filesystem=~/.local/share/icons com.microsoft.Edge

# Install educational games
install-games-educational:
  flatpak install -y --system \\
    org.kde.kturtle \\
    edu.mit.Scratch \\
    com.tux4kids.tuxmath \\
    com.tux4kids.tuxtype \\
    org.tuxpaint.Tuxpaint \\ 
    net.sonic_pi.SonicPi





# Install virtualization stack (libvirt/virt-manager/etc)
install-virtualization:
  rpm-ostree install libvirt-client libvirt-daemon-kvm virt-install virt-manager

# Un-install virtualization stack (libvirt/virt-manager/etc)
uninstall-virtualization:
  rpm-ostree uninstall libvirt-client libvirt-daemon-kvm virt-install virt-manager