cross deploy QtIFW installer using wine

## ci-qt-installer-framework-windows-target

### usage
* Pull and run docker image
	```bash
	$ docker pull hivaiot/ci-qt-installer-framework-windows-target:latest
	```
	```bash
	$ docker run -it -v $PWD:/code hivaiot/ci-qt-installer-framework-windows-target:latest 
	```
* Creating the Installer Binary
	```bash
	$ binarycreator -c Installer/config/config-windows.xml -p Installer/packages Installer.exe
	```
also see [QtIFW official docs](https://doc.qt.io/qtinstallerframework/index.html)