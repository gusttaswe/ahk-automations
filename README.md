# AutoHotkey Automations

Custom [AutoHotkey v2.0](https://www.autohotkey.com/) scripts for window management and productivity on Windows 11.

## Scripts

### `auto-resize-window.ahk`

Automatically resizes the currently active window and centers it on your screen with clean, consistent margins around the edges.

- **Shortcut:** `Ctrl + Alt + R` (`^!R`)
- **Behavior:**
  - Compares your current screen dimensions (`A_ScreenWidth` / `A_ScreenHeight`) against your configured base screen resolution (`baseScreenWidth` / `baseScreenHeight`).
  - On larger external monitors (wider than `baseScreenWidth`), resizes the active window to **85% width** and **90% height**.
  - On standard/laptop displays, resizes the active window to **90% width** and **90% height**.
  - Centers the window horizontally and vertically on the screen.

#### Configuration

Open `auto-resize-window.ahk` and adjust `baseScreenWidth` and `baseScreenHeight` to match your laptop or primary screen model's native resolution:

```ahk
baseScreenWidth := 2560
baseScreenHeight := 1600
```

Common resolutions:
- **1920 × 1080** (16:9 Full HD)
- **2560 × 1440** (16:9 QHD)
- **2560 × 1600** (16:10 QHD+ laptops)

## Getting Started

1. Download and install [AutoHotkey v2.0](https://www.autohotkey.com/).
2. Clone or download `auto-resize-window.ahk`.
3. Update `baseScreenWidth` and `baseScreenHeight` for your display.
4. Double-click `auto-resize-window.ahk` to run it, then press `Ctrl + Alt + R` on any active window.
