$ErrorActionPreference	= 'Stop';
$toolsDir				= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName			= 'vmware-converter'
$installerType			= 'exe'
$url					= ''
$softwareName			= 'VMware vCenter Converter Standalone*'
$checksum				= 'CA4FD6ECB0BE2EE7D96485D16325B79FBFE0AF46E94180D2899727AC99A56EA3'
$checksumType			= 'sha256'
$silentArgs			= '/s /v"/qn ADDLOCAL=ALL"'
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
