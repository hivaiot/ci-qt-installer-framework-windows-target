# Supported tags and respective `Dockerfile` links
* [latest](https://github.com/hivaiot/ci-qt-installer-framework-windows-target/blob/master/Dockerfile): QtIFW

# What is ci-qt-installer-framework-windows-target?
Qt Installer Framework (QtIFW) coudn't create installer for Windows on Linux, so Linux runners in continuous integration services couldn't help to create installers for Windows. Hopefully, QtIFW could run on wine with some dependencies.

# About this image 

This image has binarycreator.exe (that is Windows binary file) and run it inside wine with requirement libraries to working fine on Linux runners.

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
For further reading about QtIFW please see  [QtIFW official docs](https://doc.qt.io/qtinstallerframework/index.html)



For building and deploying `Qt`/`C++` applications on CI with Linux runners to build Windows binary use [`ci-qt-windows-target`](https://hub.docker.com/r/hivaiot/ci-qt-windows-target) docker image.

