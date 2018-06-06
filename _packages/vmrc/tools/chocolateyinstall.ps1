$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'vmrc'
$installerType	= 'exe'
$url	=	'https://dlm2.vmware.com/akdlm/software/vmrc/1002/VMware-VMRC-10.0.2-7096020.zip?HashKey=d4da1f3c46d69284c59fd067dd6d8a21&params=%7B%22custnumber%22%3A%22KmQlZWgqZHR3ZQ%3D%3D%22%2C%22sourcefilesize%22%3A%2229.46+MB%22%2C%22dlgcode%22%3A%22VMRC10.0.2%22%2C%22languagecode%22%3A%22en%22%2C%22source%22%3A%22DOWNLOADS%22%2C%22downloadtype%22%3A%22dlm%22%2C%22eula%22%3A%22Y%22%2C%22downloaduuid%22%3A%22c1b22b2f-2755-4262-9ea8-498fe9c90ad9%22%2C%22purchased%22%3A%22N%22%2C%22dlgtype%22%3A%22Drivers+%26+Tools%22%2C%22productversion%22%3A%2210.0.2%22%2C%22productfamily%22%3A%22VMware+vSphere%22%7D&AuthKey=1528298348_eff818416f0194e0f7832cee98ac12e4&dlmauthparam=1528326249_ab328b647e66af3b65fb12ca892df3c7&fileExt=.zip'
$file	= $toolsDir + '\VMware-VMRC-10.0.2-7096020.exe'
$softwareName	= 'VMware Remote Console*'
$checksum	= 'E3F1254D4B2A8181DEB00A11488A00C2A3D8AF19480893211DF259ABA647E91F'
$checksumType	= 'sha256'
$silentArgs	= '/s /v"/qn EULAS_AGREED=1 AUTOSOFTWAREUPDATE=1 DATACOLLECTION=0 REBOOT=ReallySuppress'
$validExitCodes	= @(0)

	$packageArgs = @{
	  packageName   = $env:ChocolateyPackageName
	  unzipLocation = $toolsDir
	  fileType      = $installerType
	  url			= $url
	  softwareName  = $softwareName
	  checksum      = $checksum
	  checksumType	= $checksumType
	  validExitCodes= $validExitCodes
	}

Install-ChocolateyZipPackage @packageArgs

	$packageArgs2 = @{
	  packageName   = $env:ChocolateyPackageName
	  unzipLocation = $toolsDir
	  fileType      = $installerType
	  #file			= $toolsDir + "\VMware-VMRC-10.0.2-7096020.exe"
	  file			= $file
	  softwareName  = $softwareName
	  silentArgs    = $silentArgs
	  validExitCodes= $validExitCodes
	}
Install-ChocolateyPackage @packageArgs2
