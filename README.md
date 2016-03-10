##Firefox
Includes ublock origin, and Adwaita gtk theme
```
cd firefox
docker build -t jsparber/firefox .
docker run --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix jsparber/firefox
```
##Firefox-audio
Includes ublock origin, and Adwaita gtk theme
```
cd firefox
docker build -t jsparber/firefox .
docker run --tty --interactive --rm -i -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v /dev/shm:/dev/shm \
  -v /etc/machine-id:/etc/machine-id \
  -v /run/user/$UID/pulse:/run/user/$UID/pulse \
  -v /var/lib/dbus:/var/lib/dbus \
  -v ~/.pulse:/home/firefox/.pulse  \
  jsparber/firefox
```

##Chromium
```
cd chromium
docker build -t jsparber/chromium .
docker run --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix jsparber/chromium
