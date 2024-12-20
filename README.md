## Explain
The OS image for ComposiTV.

The default Sway environment is pre-configured with bindings intended for remote controls.

From `mkosi.extra/etc/sway/config.d/90-compositv.conf`:
```
# XF86AudioPlay = OK
# XF86AudioStop = Stop
# Pause = Back
# Menu = Play/Pause
# XF86PowerOff = Power
# Mod4+Ctrl+f = Fullscreen
```
Control the mouse cursor with the directional buttons (arrow keys), and click by pressing OK.

Press the Play/Pause button to open the launcher.

Press Stop to close the focused program, exit the launcher, or return to the default mode.

Pressing the Back button cycles through modes.
In the select and size modes, the OK button manages floating windows.

## Name
Commutativity is a property of mathematical functions.

## Building
You will likely need an Arch Linux build environment.

Build wvkbd and dotool from the AUR,
and copy them into `mkosi.packages/`

Run `mkosi` (or `mkosi --force` if rebuilding)

`dd` the resulting `commute.raw` to the target device.
systemd-repart will resize partitions on first boot.
