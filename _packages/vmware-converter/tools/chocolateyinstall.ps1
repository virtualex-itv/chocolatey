$ErrorActionPreference	= 'Stop';
$toolsDir				= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName			= 'vmware-converter'
$installerType			= 'exe'
$url					= 'https://dlm2.vmware.com/akdlm/software/vi/VMware-converter-en-6.2.0-8466193.exe?HashKey=b5f1949ad789e0cd60bec6f9806c8215&ext=.exe&params=%7B%22custnumber%22%3A%22KmQlZWgqZHR3ZQ%3D%3D%22%2C%22sourcefilesize%22%3A%22171.92+MB%22%2C%22dlgcode%22%3A%22CONV62%22%2C%22languagecode%22%3A%22en%22%2C%22source%22%3A%22DOWNLOADS%22%2C%22downloadtype%22%3A%22dlm%22%2C%22eula%22%3A%22Y%22%2C%22downloaduuid%22%3A%221664ba44-60ae-4606-b650-4d721c1aa10d%22%2C%22purchased%22%3A%22N%22%2C%22dlgtype%22%3A%22Product+Binaries%22%2C%22productversion%22%3A%226.2.0.1%22%2C%22productfamily%22%3A%22VMware+vCenter+Converter+Standalone%22%7D&AuthKey=1528245634_903e5d2d7bde7bf6a856fb24c1cc64a3&ext=.exe&dlmauthparam=1528273534_230f3d33b1b69284fef15f4b43267446&fileExt=.exe'
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
