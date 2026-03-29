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
winget install --id 7zip.7zip -e --interactive
winget install --id RARLab.WinRAR -e --interactive
winget install --id Notepad++.Notepad++ -e --interactive
winget install --id Git.Git -e --interactive
winget install --id OpenJS.NodeJS -e --interactive
winget install --id Microsoft.DotNet.SDK.10 -e --interactive

# =========================
# BLOCK 2 — APPS
# =========================
winget install --id Discord.Discord -e --interactive
winget install --id TunnelBear.TunnelBear -e --interactive
winget install --id Nvidia.NvidiaApp -e --interactive
winget install --id Valve.Steam -e --interactive
winget install --id qBittorrent.qBittorrent -e --interactive

# =========================
# BLOCK 3 — MICROSOFT STORE
# =========================
winget install --id 9NZTWSQNTD0S -e   # Telegram
winget install --id 9NCBCSZSJRSB -e   # Spotify
winget install --id XP89DCGQ3K6VLD -e # PowerToys

Write-Host "=== INSTALL DONE ==="
