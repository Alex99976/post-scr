Write-Host "=== SYSTEM SETUP START ==="

# =========================
# BLOCK 1 — EXECUTION POLICY
# =========================
Set-ExecutionPolicy RemoteSigned -Scope LocalMachine -Force

# =========================
# BLOCK 2 — LANGUAGE / INPUT
# =========================
Set-ItemProperty -Path "HKCU:\Keyboard Layout\Preload" -Name "1" -Value "00000409"
Set-ItemProperty -Path "HKCU:\Keyboard Layout\Preload" -Name "2" -Value "00000419"
Set-ItemProperty -Path "HKCU:\Control Panel\International\User Profile" -Name "InputMethodForEachApp" -Value 1
Set-ItemProperty -Path "HKCU:\Control Panel\International\User Profile" -Name "InputMethodOverride" -Value "0409:00000409"

# =========================
# BLOCK 3 — DESKTOP ICONS
# =========================
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" -Value 0

# =========================
# BLOCK 4 — START MENU CLEAN
# =========================
$startPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
Set-ItemProperty -Path $startPath -Name "Start_TrackDocs" -Value 0
Set-ItemProperty -Path $startPath -Name "Start_TrackProgs" -Value 0
Set-ItemProperty -Path $startPath -Name "Start_IrisRecommendations" -Value 0

# =========================
# BLOCK 5 — EXPLORER SETTINGS
# =========================
$explorerPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
Set-ItemProperty -Path $explorerPath -Name "HideFileExt" -Value 0
Set-ItemProperty -Path $explorerPath -Name "UseCompactMode" -Value 1


Write-Host "=== SYSTEM SETUP DONE ==="