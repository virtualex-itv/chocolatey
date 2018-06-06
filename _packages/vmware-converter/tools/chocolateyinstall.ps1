$ErrorActionPreference	= 'Stop';
$toolsDir				= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName			= 'vmware-converter'
$installerType			= 'exe'
$url					= 'https://dlm2.vmware.com/akdlm/software/vi/VMware-converter-en-6.2.0-8466193.exe?HashKey=bc957a5f2eddf5068f2932a8cc829bce&ext=.exe&params=%7B%22custnumber%22%3A%22KmQlZWgqZHR3ZQ%3D%3D%22%2C%22sourcefilesize%22%3A%22171.92+MB%22%2C%22dlgcode%22%3A%22CONV62%22%2C%22languagecode%22%3A%22en%22%2C%22source%22%3A%22DOWNLOADS%22%2C%22downloadtype%22%3A%22dlm%22%2C%22eula%22%3A%22Y%22%2C%22downloaduuid%22%3A%2253761a3e-1bc4-450b-81ff-7d9102312922%22%2C%22purchased%22%3A%22N%22%2C%22dlgtype%22%3A%22Product+Binaries%22%2C%22productversion%22%3A%226.2.0.1%22%2C%22productfamily%22%3A%22VMware+vCenter+Converter+Standalone%22%7D&AuthKey=1528300514_d479456bc6f475be6e243bf3847e78a5&ext=.exe&dlmauthparam=1528328415_460ce7fb3a650407bf4c5ead53c47afd&fileExt=.exe'
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
