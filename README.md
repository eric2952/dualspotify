# command for display access
```
xhost +local:docker
```
# alternative to the above
https://riptutorial.com/docker/example/21831/running-gui-apps-in-a-linux-container

# current status - when run docker-compose, it cannot connect to xserver
```bash
MESA: error: Failed to query drm device.
libGL error: glx: failed to create dri3 screen
libGL error: failed to load driver: iris
libGL error: failed to open /dev/dri/card0: No such file or directory
libGL error: failed to load driver: iris
libva error: vaGetDriverNameByIndex() failed with unknown libva error, driver_name = (null)
```
