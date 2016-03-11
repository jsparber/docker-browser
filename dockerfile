FROM debian 
RUN apt-get update && apt-get upgrade -y && apt-get install -y iceweasel libcanberra-gtk-module libcanberra-gtk3-module gtk2-engines-pixbuf pulseaudio && apt-get clean &&  rm -rf /var/lib/apt/lists/*
COPY theme /usr/share/themes/Adwaita
COPY config/vendor.js /usr/lib/iceweasel/browser/defaults/preferences/vendor.js
RUN useradd -m iceweasel
ENV HOME /home/iceweasel 
COPY profil /home/iceweasel/.mozilla/firefox
COPY config/gtk.conf /home/iceweasel/.config/gtk-3.0/settings.ini
RUN chown iceweasel:users -R /home/iceweasel/
USER iceweasel

ENTRYPOINT ["/usr/bin/iceweasel", "-no-remote"]
