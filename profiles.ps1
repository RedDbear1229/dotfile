# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Shell to use Starship
Invoke-Expression (&starship init powershell)

# Import Modules
Import-Module PSReadLine
Import-Module -Name Terminal-Icons
Import-Module PoShFuck
Import-Module PSFzf

# PSReadLine
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Fzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
