$ErrorActionPreference	= 'Stop';
$toolsDir				= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName			= 'rvtools'
$installerType			= 'msi'
$url					= 'https://robware.net/download/501D8EE9-B871-45FB-B2A1-9BE0B7BFF024/RVTools3.10.msi'
$softwareName			= 'RVTools*'
$checksum				= '3582DEF818A8E0D532C064F8BFB44C877AE43D0AC156A8E8E6F2029F87D6C3A3'
$checksumType			= 'sha256'
$silentArgs			= "/qn /norestart"
$validExitCodes		= @(0)

	$packageArgs = @{
	  packageName		= $env:ChocolateyPackageName
	  unzipLocation		= $toolsDir
	  fileType			= $installerType
	  url				= $url
	  softwareName		= $softwareName
	  checksum			= $checksum
	  checksumType		= $checksumType
	  silentArgs		= $silentArgs
	  validExitCodes	= $validExitCodes
	}

Install-ChocolateyPackage @packageArgs
