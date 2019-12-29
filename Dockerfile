FROM ubuntu

RUN apt update &&\
    apt upgrade -y &&\
    apt install curl xvfb libfontconfig fontconfig libjpeg-turbo8 libxrender1 xfonts-75dpi fonts-ipaexfont -y &&\
    curl -o pandoc.deb -L https://github.com/jgm/pandoc/releases/download/2.9.1/pandoc-2.9.1-1-amd64.deb &&\
    dpkg -i pandoc.deb &&\
    curl -o wkhtmltox.deb -L https://downloads.wkhtmltopdf.org/0.12/0.12.5/wkhtmltox_0.12.5-1.bionic_amd64.deb &&\
    dpkg -i wkhtmltox.deb
