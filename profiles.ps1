Import-Module PSReadLine

Set-Alias ls lsd
$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

Invoke-Expression (&starship init powershell)



Import-Module PoShFuck
