[![Latest version released](https://img.shields.io/chocolatey/v/vmware-powercli-psmodule.svg)](https://chocolatey.org/packages/vmware-powercli-psmodule)
[![Package downloads count](https://img.shields.io/chocolatey/dt/vmware-powercli-psmodule.svg)](https://chocolatey.org/packages/vmware-powercli-psmodule)

#### VIRTUALEX'S PACKAGE NOTES:

* This package will always install the specific version from the Microsoft PowerShell Gallery as long as it exists there.
* This package installs using the PowerShell Gallery. PowerShell Gallery requires PowerShell 5.0+ which is set as a dependency.  If PowerShell 5.0+ is not already installed, it requires a reboot to become functional and this package will fail to install.  If this happens to you because PowerShell 5.0+ was installed with this package, reboot and try again.
* This package will also create a shortcut on the desktop, and import the module upon launch to have the same look/feel like the legacy .exe installer version.
