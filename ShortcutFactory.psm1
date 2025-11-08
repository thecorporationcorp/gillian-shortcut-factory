function Install-ShortcutFactory {
    param([string]$InstallPath = "C:\ShortcutFactory")
    Write-Host "Installing Shortcut Factory at $InstallPath" -ForegroundColor Cyan
    if (!(Test-Path $InstallPath)) { New-Item -ItemType Directory -Path $InstallPath | Out-Null }
    Set-Location $InstallPath
    $folders = @("examples", ".github", ".github\workflows", "unsigned_shortcuts")
    foreach ($f in $folders) {
        if (!(Test-Path $f)) { New-Item -ItemType Directory -Path $f | Out-Null }
    }
    Write-Host "Shortcut Factory installed successfully!" -ForegroundColor Green
}

function New-ShortcutFactoryBuild {
    param(
        [Parameter(Mandatory=$true)][string]$RepoURL,
        [Parameter(Mandatory=$true)][string]$GitHubToken,
        [string]$GclFile = "examples\example1.gcl"
    )
    Write-Host "Building shortcut from $GclFile..." -ForegroundColor Cyan
    Write-Host "This function will build and sign shortcuts via GitHub Actions" -ForegroundColor Yellow
}

function Remove-ShortcutFactory {
    param([string]$InstallPath = "C:\ShortcutFactory", [switch]$Force)
    if (!(Test-Path $InstallPath)) {
        Write-Host "No installation found at $InstallPath" -ForegroundColor Yellow
        return
    }
    if (-not $Force) {
        $confirm = Read-Host "Type YES to delete ShortcutFactory completely"
        if ($confirm -ne "YES") {
            Write-Host "Cancelled." -ForegroundColor Yellow
            return
        }
    }
    Remove-Item -Path $InstallPath -Recurse -Force
    Write-Host "Removed Shortcut Factory from $InstallPath" -ForegroundColor Green
}

Export-ModuleMember -Function Install-ShortcutFactory, New-ShortcutFactoryBuild, Remove-ShortcutFactory
