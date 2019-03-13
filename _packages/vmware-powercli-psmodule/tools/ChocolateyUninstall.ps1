$ErrorActionPreference = 'Stop'
$packageName = 'vmware-powercli-psmodule'
$Path = "$env:Public\Desktop\VMware PowerCLI.lnk"

Get-InstalledModule -Name "VMware.*" |  Uninstall-Module -AllVersions -Force

Remove-Item $Path -Force -ErrorAction 'SilentlyContinue'
