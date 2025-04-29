## Explain
The OS image for ComposiTV.

The default Sway environment is pre-configured to use an Xbox 360 Controller.

Control the mouse cursor with the Left Stick, and left click by pressing A.

Scroll with the Right Stick, and middle click by pressing the Right Stick.

Right click by pressing the Left Stick ( :P ), or by holding A.

Press the Start button to switch the focused window between tiling and floating.

Press the Guide button to open the launcher.

Press the Back button to close the focused program (this will not exit the launcher).

Press X to toggle the on screen keyboard.

Press Y to toggle fullscreen.

## Name
Commutativity is a property of mathematical functions.

## Building
You will likely need an Arch Linux build environment.

Build bauh, wvkbd, and waterfox-bin from the AUR,
and copy them into `mkosi.packages/`

Create `mkosi.local.conf` with relevant options for your target system.
See `mkosi.local.conf.example` for a minimal configuration.

Run `mkosi` (or `mkosi --force` if rebuilding)

`dd` the resulting `commute.raw` to the target device.
systemd-repart will resize partitions on first boot.

## Updating
A local HTTP server `commute-dev-update-server.lan` may be set up to provide updates.

See the files under `mkosi.extra/usr/lib/sysupdate.d/` for more information, and the `systemd-sysupdate` documentation.

Also see `autobuild.sh`, which will automatically populate `/srv/http/` with new update files and delete old ones.

**Notice**: *Any* files under `/srv/http/` older than 3 days are deleted.
