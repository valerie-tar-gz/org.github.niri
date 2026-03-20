# Niri Flatpak
## Note: This sucks. You shouldn't use this. I probably won't update it ever

# Instructions
The Flatpak comes with foot, and fastfetch (For the unixporn points), however Niri is not configured to use foot by default.

Note: running `flatpak run org.github.niri` on its own doesn't work, for some reason. Running `WAYLAND_DISPLAY=$XDG_RUNTIME_DIR/$WAYLAND_DISPLAY flatpak run org.github.niri` works properly.

Brew is available inside of the flatpak by running `brew-wrapper`. The brew flatpak functionality is borrowed (with love) from https://github.com/jumpyvi/flatpaks

To add foot to the niri config:
1. Run `WAYLAND_DISPLAY=$XDG_RUNTIME_DIR/$WAYLAND_DISPLAY flatpak run org.github.niri` and close it (This will initialize the Niri config)
2. Open `~/.var/app/config/niri/config.kdl` in a text editor
3. Edit the line that says `    Mod+T hotkey-overlay-title="Open a Terminal: alacritty" { spawn "alacritty"; }` to instead read `    Mod+T hotkey-overlay-title="Open a Terminal: foot" { spawn "/app/bin/foot"; }`
4. Run Niri again, this time `Alt+T` should open foot (And fastfetch should work in there)
