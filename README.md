# ansible_ubuntu_build
An ansible play to build my laptop config

Run with:

    ansible-galaxy install -r requirements.yml
    ansible-playbook ./build_laptop.yml -v -u $USER -b -e ansible_python_interpreter=/usr/bin/python3

Example inventory that makes an alias for localhost that uses Python3

    localhost-py3 ansible_host=localhost ansible_connection=local ansible_python_interpreter=/usr/bin/python3
    
    # Example of setting a group of hosts to use Python3
    [py3-hosts]
    ubuntu16
    fedora27
    
    [py3-hosts:vars]
    ansible_python_interpreter=/usr/bin/python3


ansible-playbook --connection=local 127.0.0.1 build_laptop.yml
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
    build-essential libssl-dev libffi-dev python3-dev
    pkg-config libc6-dev libexpat1-dev libavcodec-dev libgl1-mesa-dev qtbase5-dev zlib1g-dev 
    handbrake-gtk handbrake-cli 
    libdvd-pkg
    chromium-codecs-ffmpeg-extra chromium-codecs-ffmpeg chromium-browser
    enpass
    steam

libdvdnav4 
libdvdread4
gstreamer1.0-plugins-bad 
gstreamer1.0-plugins-ugly
smplayer mplayer-gui
# xine-ui
dpkg-reconfigure libdvd-pkg

openconnect
Suggested packages:
  dnsmasq resolvconf

###CAC / HSPD-12 card
opensc libpcsclite1 pcscd pcsc-tools

### audio recorder
sudo apt-add-repository ppa:audio-recorder/ppa
sudo apt-get update
sudo apt-get install audio-recorder

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

