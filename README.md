## Name
Commutativity is a property of mathematical functions.

## Building
You will likely need an Arch Linux build environment.

Build wvkbd and dotool from the AUR,
and copy them into `mkosi.packages/`

Run `mkosi` (or `mkosi --force` if rebuilding)

`dd` the resulting `commute.raw` to the target device.
systemd-repart will resize partitions on first boot.
