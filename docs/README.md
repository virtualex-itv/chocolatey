<p align="center"><img src="http://ithinkvirtual.com/wp-content/uploads/2018/03/vmx_itv_bit2.png"></p>
<p align="center"><img src="http://ithinkvirtual.com/wp-content/uploads/2018/06/choco-logo.jpg"></p>

# chocolatey
This repository is a collection of chocolatey packages that I've created.

----------
#### Prerequisites
----------
Install Chocolatey using your preferred ***"administrative"*** shell application

[![Latest released version](https://img.shields.io/chocolatey/v/chocolatey.svg)](https://chocolatey.org/packages/chocolatey)
[![Latest released version](https://img.shields.io/chocolatey/vpre/chocolatey.svg)](https://chocolatey.org/packages/chocolatey)

##### *cmd*
`@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"`

##### *pwsh*
`Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))`

----------
#### Usage
----------
`choco -?`

https://chocolatey.org/docs/commands-install

`choco install <package_name> [options]` or `cinst <package_name> [options]`

https://chocolatey.org/docs/commands-uninstall

`choco uninstall <package_name> [options]` or `cuninst <package_name> [options]`

https://chocolatey.org/docs/commands-upgrade

`choco upgrade <package_name|all> [options]` or `cup <package_name|all> [options]`

----------
#### Example
----------
`choco install firefox -y` or `cinst firefox -y`

<img src="http://ithinkvirtual.com/wp-content/uploads/2018/06/choco.gif">

----------
### ***[packages](https://github.com/virtualex-itv/chocolatey/tree/master/_packages)***
