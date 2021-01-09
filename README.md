# ansible_ubuntu_build
An ansible play to build my laptop config

## Notes:

### setting up repos

    add-apt-repository multiverse
    add-apt-repository ppa:stebbins/handbrake-releases

### enpass:

    echo "deb https://apt.enpass.io/ stable main" > \
    /etc/apt/sources.list.d/enpass.list

    wget -O - https://apt.enpass.io/keys/enpass-linux.key | apt-key add -

### packages I want installed

    apt update
    apt install openssh-server vim 
    net-tools
    ubuntu-restricted-extras 
    build-essential pkg-config libc6-dev libssl-dev libexpat1-dev libavcodec-dev libgl1-mesa-dev qtbase5-dev zlib1g-dev 
    handbrake-gtk handbrake-cli 
    libdvd-pkg
    chromium-codecs-ffmpeg-extra chromium-codecs-ffmpeg chromium-browser
    enpass
    steam


https://linuxconfig.org/how-to-install-steam-on-ubuntu-20-04-focal-fossa-linux
ref: https://www.makemkv.com/forum/viewtopic.php?f=3&t=224

### makemkv install
    get_url htbtps://www.makemkv.com/download/makemkv-bin-1.15.4.tar.gz
    get_url https://www.makemkv.com/download/makemkv-oss-1.15.4.tar.gz

For `makemkv-oss` package:

    cd ./makemkv-oss
    ./configure
    make
    sudo make install

For `makemkv-bin` package:

    cd ./makemkv-bim
    make
    sudo make install

### google drive on some linux desktops

    sudo add-apt-repository ppa:alessandro-strada/ppa
    sudo apt update
    sudo apt install google-drive-ocamlfuse

