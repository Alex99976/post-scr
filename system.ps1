Write-Host "=== SYSTEM SETUP START ===" -ForegroundColor Cyan

# =========================
# BLOCK 1 — EXECUTION POLICY
# =========================
Write-Host "[BLOCK 1] Execution Policy (SKIPPED)" -ForegroundColor Yellow
# Set-ExecutionPolicy RemoteSigned -Scope LocalMachine -Force

# =========================
# BLOCK 2 — LANGUAGE / INPUT
# =========================
Write-Host "[BLOCK 2] Setting language and input..." -ForegroundColor Cyan
Set-ItemProperty -Path "HKCU:\Keyboard Layout\Preload" -Name "1" -Value "00000409"
Write-Host "  - English (US) set as primary"
Set-ItemProperty -Path "HKCU:\Keyboard Layout\Preload" -Name "2" -Value "00000419"
Write-Host "  - Russian set as secondary"
Set-ItemProperty -Path "HKCU:\Control Panel\International\User Profile" -Name "InputMethodForEachApp" -Value 1
Write-Host "  - Per-app input enabled"
Set-ItemProperty -Path "HKCU:\Control Panel\International\User Profile" -Name "InputMethodOverride" -Value "0409:00000409"
Write-Host "  - Default input forced to English"

# =========================
# BLOCK 3 — DESKTOP ICONS
# =========================
Write-Host "[BLOCK 3] Configuring desktop icons..." -ForegroundColor Cyan
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -Name "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" -Value 0
Write-Host "  - 'This PC' icon enabled"

# =========================
# BLOCK 4 — START MENU CLEAN
# =========================
Write-Host "[BLOCK 4] Cleaning Start Menu..." -ForegroundColor Cyan
$startPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
Set-ItemProperty -Path $startPath -Name "Start_TrackDocs" -Value 0
Write-Host "  - Recent documents disabled"
Set-ItemProperty -Path $startPath -Name "Start_TrackProgs" -Value 0
Write-Host "  - Program tracking disabled"
Set-ItemProperty -Path $startPath -Name "Start_IrisRecommendations" -Value 0
Write-Host "  - Recommendations disabled"

# =========================
# BLOCK 5 — EXPLORER SETTINGS
# =========================
Write-Host "[BLOCK 5] Configuring Explorer..." -ForegroundColor Cyan
$explorerPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
Set-ItemProperty -Path $explorerPath -Name "HideFileExt" -Value 0
Write-Host "  - File extensions enabled"
Set-ItemProperty -Path $explorerPath -Name "UseCompactMode" -Value 1
Write-Host "  - Compact mode enabled"

# =========================
# SUMMARY
# =========================
Write-Host ""
Write-Host "=== SYSTEM SETUP DONE ===" -ForegroundColor Green
