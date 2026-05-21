# panel-color

Sets your GNOME panel color to the average color of your current wallpaper.

## Dependencies

- `imagemagick` (v7+)
- `python3`
- `gnome-tweaks`

```bash
sudo dnf install imagemagick gnome-tweaks
```

## Usage

```bash
chmod +x panel-color.sh
./panel-color.sh [options]
```

| Option | Default | Description |
|---|---|---|
| `--top` | off | Sample only the top 10% of the wallpaper instead of the full image |
| `--opacity N` | `0.85` | Panel background opacity (0.0–1.0). Use `0.4` for a macOS-like look |
| `--dark N` | `15` | Darken the color by N percent |
| `--apply` | off | Apply the theme automatically via gsettings |
| `--theme NAME` | `WallpaperPanel` | Name of the generated theme folder |

## Setup

Run the script once to generate the CSS:

```bash
./panel-color.sh --top --opacity 0.4 --apply
```

If `--apply` doesn't work (user-theme extension inactive), set it manually:
**GNOME Tweaks → Appearance → Shell → WallpaperPanel**

To reload the shell after applying:
- **X11:** `Alt+F2` → type `r` → Enter
- **Wayland:** log out and back in

## Notes

- The theme is written to `~/.local/share/themes/WallpaperPanel/gnome-shell/gnome-shell.css`
- Re-run the script whenever you change your wallpaper
- `--top` gives a more natural result since the panel sits at the top of the screen
- Blur is not handled by this script — use a shell extension for that
