$ErrorActionPreference = 'Stop'
$packageName = 'vmware-powercli-psmodule'
$Path = "$env:Public\Desktop\VMware PowerCLI.lnk"
$Path2 = "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\VMware PowerCLI.lnk"

Get-InstalledModule -Name "VMware.*" |  Uninstall-Module -AllVersions -Force

Remove-Item $Path -Force -ErrorAction 'SilentlyContinue'
Remove-Item $Path2 -Force -ErrorAction 'SilentlyContinue'
