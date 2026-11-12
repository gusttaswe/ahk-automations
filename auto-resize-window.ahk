; AUTO RESIZE & CENTER WINDOW
; Automatically resizes the active window ("A") to a comfortable percentage of the screen
; and centers it both horizontally and vertically.
;
; Shortcut:
;   Ctrl + Alt + R (^!R) → Resize and center the active window
;
; How it works:
;   - Compares the current monitor resolution (A_ScreenWidth / A_ScreenHeight) against
;     your base screen resolution.
;   - On larger external monitors (wider than baseScreenWidth), scales width to 85%.
;   - On standard/laptop screens, scales width to 90% and height to 90%.
;   - Moves the window to the exact center of the primary screen.
^!R:: {
  ; Base screen resolution thresholds (in pixels).
  ; Change these values based on your laptop or primary screen model's native resolution
  ; (e.g., 1920x1080 for FHD, 2560x1440 for QHD, or 2560x1600 for 16:10 QHD+ laptops).
  baseScreenWidth := 2560
  baseScreenHeight := 1600

  s_width := A_ScreenWidth > baseScreenWidth ? A_ScreenWidth * 0.85 : A_ScreenWidth * 0.90
  s_height := A_ScreenHeight > baseScreenHeight ? A_ScreenHeight * 0.9 : A_ScreenHeight * 0.9

  WinMove ,,s_width, s_height, "A"
  WinGetPos ,, &Width, &Height,  "A"
  WinMove (A_ScreenWidth/2)-(Width/2), (A_ScreenHeight/2)-(Height/2),,, "A"
}
