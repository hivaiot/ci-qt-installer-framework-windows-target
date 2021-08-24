FROM ubuntu:20.04

RUN apt-get update && apt-get install -y software-properties-common gnupg2 curl
RUN curl -fsSL https://dl.winehq.org/wine-builds/winehq.key | apt-key add - && add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' && dpkg --add-architecture i386 
RUN apt update --fix-missing && apt-get upgrade -y
RUN apt install --install-recommends winehq-stable -y
RUN apt install p7zip-full -y
RUN curl -L -o qtifw.7zip  https://download.qt.io/online/qtsdkrepository/windows_x86/desktop/tools_ifw/qt.tools.ifw.41/4.1.1-202105261131ifw-win-x86.7z && \
	7z x -aoa qtifw.7zip && mkdir -p /opt/qtifw && mv Tools/* /opt/qtifw/ && rmdir Tools  && rm qtifw.7zip
COPY bin/* /bin/