$ErrorActionPreference = 'Stop'
$packageName = 'vmware-powercli-psmodule'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

# This will install the Nuget Package Provider
$Provider = Get-PackageProvider -ListAvailable -ErrorAction SilentlyContinue

If ( $Provider.Name -notmatch "NuGet" ) {
	Install-PackageProvider -Name "nuget" -Confirm:$false -MinimumVersion "2.8.5.201" -Force
	Set-PSRepository -Name "PSGallery" -InstallationPolicy "Trusted"
} Else { Set-PSRepository -Name "PSGallery" -InstallationPolicy "Trusted" }

# This will install the VMware.PowerCLI Module
$ModuleVersion = ( Get-Module "VMware.PowerCLI" ).Version

If ( $ModuleVersion -ge "6.5.1.5377412" -and $ModuleVersion -lt "11.2.0.12780525" ) { Update-Module "VMware.PowerCLI" -RequiredVersion "11.2.0.12780525" }
Else { Find-Module -Name "VMware.PowerCLI" | Install-Module -RequiredVersion "11.2.0.12780525" -Scope "AllUsers" -AllowClobber -Force }

# This will create a Desktop Shortcut
$Path = $env:Public + "\Desktop\VMware PowerCLI.lnk"
$Path2 = $env:ProgramData + "\Microsoft\Windows\Start Menu\Programs\VMware PowerCLI.lnk"
$TargetPath = 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe'
$WorkingDir = $env:HomeDrive + "\"
$Arguments = '-noe -c "Import-Module VMware.PowerCLI"'
$Icon = $toolsDir + "\powercli.ico"
$Desc = 'Launch VMware PowerCLI'

If ( ! ( Test-Path $Path )  ) { 
	Install-ChocolateyShortcut `
		-ShortcutFilePath $Path `
		-TargetPath $TargetPath `
		-WorkingDirectory $WorkingDir `
		-Arguments $Arguments `
		-IconLocation $Icon `
		-Description $Desc `
		-WindowStyle '1' `
		-RunAsAdmin
	}

If ( ! ( Test-Path $Path2 )  ) { 
	Install-ChocolateyShortcut `
		-ShortcutFilePath $Path2 `
		-TargetPath $TargetPath `
		-WorkingDirectory $WorkingDir `
		-Arguments $Arguments `
		-IconLocation $Icon `
		-Description $Desc `
		-WindowStyle '1' `
		-RunAsAdmin
	}

