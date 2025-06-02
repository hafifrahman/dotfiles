Import-Module DirColors

Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider "Ctrl+f" -PSReadlineChordReverseHistory "Ctrl+r"

Set-Alias vi nvim
Set-Alias pn pnpm
Set-Alias grep findstr

function mkcd {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Path
  )
  New-Item -ItemType Directory -Path $Path -Force; Set-Location -Path $Path
}
function which {
  param (
    [Parameter(Mandatory = $true)]
    [string]$Command
  )
  (Get-Command -Name $Command -ErrorAction SilentlyContinue).Source
}
function path { $env:Path -split ";" }
function la { Get-ChildItem -Force  }
function ll { Get-ChildItem -Force -Hidden }

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\robbyrussell.omp.json" | Invoke-Expression
