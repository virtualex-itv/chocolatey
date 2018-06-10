$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'vmrc'
$installerType	= 'exe'
$url	=	''
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
