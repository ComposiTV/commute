## Explain
The OS image for ComposiTV.

The default Sway environment is pre-configured to use an Xbox 360 Controller.

Control the mouse cursor with the Left Stick, and left click by pressing A.

Scroll with the Right Stick, and middle click by pressing the Right Stick.

Right click by pressing the Left Stick ( :P ).

Press the Guide button to open the launcher.

Press B to close the focused program (this will not exit the launcher).

Pressing the Back button toggles the on screen keyboard.

Press Y to toggle fullscreen.

## Name
Commutativity is a property of mathematical functions.

## Building
You will likely need an Arch Linux build environment.

Build wvkbd from the AUR,
and copy it into `mkosi.packages/`

Create `mkosi.local.conf` with relevant options for your target system.
See `mkosi.local.conf.example` for a minimal configuration.

Run `mkosi` (or `mkosi --force` if rebuilding)

`dd` the resulting `commute.raw` to the target device.
systemd-repart will resize partitions on first boot.
