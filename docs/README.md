<p align="center"><img src="https://secure.gravatar.com/avatar/3fb36d9d211b55cf1add5d69b3d96d5c?s=128&r=g&d=retro"></p>
<p align="center"><img src="http://ithinkvirtual.com/wp-content/uploads/2018/06/choco-logo.jpg"></p>

# chocolatey
This repository is a collection of chocolatey packages that I've created.

----------
#### Prerequisites
----------
Install Chocolatey using your preferred ***"administrative"*** shell application

![Supported OS](https://img.shields.io/badge/os-windows-blue.svg)
[![Latest released version](https://img.shields.io/chocolatey/v/chocolatey.svg)](https://community.chocolatey.org/packages/chocolatey)
[![Latest released version](https://img.shields.io/chocolatey/v/chocolatey.svg?include_prereleases)](https://community.chocolatey.org/packages/chocolatey)

##### *cmd*
```cmd
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```

##### *pwsh*
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

----------
#### Usage
----------
`choco -?`

https://docs.chocolatey.org/en-us/choco/commands/install/

`choco install <package_name> [options]`

https://docs.chocolatey.org/en-us/choco/commands/uninstall/

`choco uninstall <package_name> [options]`

https://docs.chocolatey.org/en-us/choco/commands/upgrade/

`choco upgrade <package_name|all> [options]`

----------
#### Example
----------
`choco install firefox -y`

<img src="http://ithinkvirtual.com/wp-content/uploads/2018/06/choco.gif">

----------
### ***[au-packages](https://github.com/virtualex-itv/chocolatey-packages/tree/master/automatic)***
