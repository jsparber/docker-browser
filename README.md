##Firefox
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
