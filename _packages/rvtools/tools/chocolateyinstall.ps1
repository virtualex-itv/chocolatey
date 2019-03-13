$ErrorActionPreference	= 'Stop';
$toolsDir				= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName			= 'rvtools'
$installerType			= 'msi'
$url					= 'https://robware.net/download/501D8EE9-B871-45FB-B2A1-9BE0B7BF1204/RVTools3.11.6.msi'
$softwareName			= 'RVTools*'
$checksum				= 'F6A187FEE12E9E3BE35B72AED0236672F48B81C8B535B590960FD35B3C0D7A8C'
$checksumType			= 'sha256'
$silentArgs			= "/qn REBOOT=ReallySuppress"
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
