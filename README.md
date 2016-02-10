##Firefox
Includes ublock origin, and Adwaita gtk theme
```
cd firefox
docker build -t jsparber/firefox .
docker run --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix jsparber/firefox
```

##Chromium
```
cd chromium
docker build -t jsparber/chromium .
docker run --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix jsparber/chromium
```

##Iceweasel
Includes ublock origin, and Adwaita gtk theme
```
cd iceweasel
docker build -t jsparber/iceweasel .
docker run --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix jsparber/iceweasel
