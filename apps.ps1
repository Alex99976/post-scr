Write-Host "=== INSTALL APPS START ==="

# =========================
# BLOCK 0 — CHECK / INSTALL WINGET
# =========================
if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Host "Winget not found. Opening installer..."
    Start-Process "ms-appinstaller:?source=https://aka.ms/getwinget"
    exit
}

# =========================
# BLOCK 1 — BASE TOOLS
# =========================
winget install --id 7zip.7zip -e --accept-package-agreements --accept-source-agreements
winget install --id RARLab.WinRAR -e --accept-package-agreements --accept-source-agreements
winget install --id Git.Git -e --accept-package-agreements --accept-source-agreements
winget install --id OpenJS.NodeJS -e --accept-package-agreements --accept-source-agreements
winget install --id Microsoft.DotNet.DesktopRuntime.10 -e --accept-package-agreements --accept-source-agreements
winget install --id Notepad++.Notepad++ -e --accept-package-agreements --accept-source-agreements

# =========================
# BLOCK 2 — APPS
# =========================
winget install --id Discord.Discord -e
winget install --id TunnelBear.TunnelBear -e
winget install --id Nvidia.NvidiaApp -e

# =========================
# BLOCK 3 — MICROSOFT STORE
# =========================
winget install --id 9NZTWSQNTD0S -e   # Telegram
winget install --id 9NCBCSZSJRSB -e   # Spotify
winget install --id XP89DCGQ3K6VLD -e # PowerToys

Write-Host "=== INSTALL DONE ==="