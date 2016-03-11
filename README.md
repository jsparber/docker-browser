##Iceweasel
Includes ublock origin, and Adwaita gtk theme
```
docker build -t masciospam/iceweasel .
docker run --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix masciospam/iceweasel
