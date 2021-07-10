# ansible_ubuntu_build
An ansible play to build my laptop config

Run with::

    cd ~
    echo "$USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER
    # sudo apt install python3-virtualenv python3-venv python-is-python3 -y
    sudo apt install aptitude python3-virtualenv python3-venv python-is-python3 psutil -y
    ./makeall.sh

    ansible-playbook ./build_laptop.yml -v -u $USER -b -e ansible_python_interpreter=/usr/bin/python3

Example inventory that makes an alias for localhost that uses Python3

    localhost-py3 ansible_host=localhost ansible_connection=local ansible_python_interpreter=/usr/bin/python3
    
    # Example of setting a group of hosts to use Python3
    [py3_hosts]
    ubuntu16
    fedora27
    
    [py3_hosts:vars]
    ansible_python_interpreter=/usr/bin/python3


ansible-playbook --connection=local 127.0.0.1 build_laptop.yml ansible_python_interpreter=/usr/bin/python3
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
    get_url https://www.makemkv.com/download/makemkv-bin-1.15.4.tar.gz
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


### epson image scan

Epson image scan software - ubuntu 20

ref: https://help.ubuntu.com/community/sane_Troubleshooting

    sane-find-scanner
    found USB scanner (vendor=0x04b8, product=0x1130) at libusb:001:002

    https://download2.ebz.epson.net/imagescanv3/ubuntu/lts1/deb/x64/imagescan-bundle-ubuntu-20.04-3.63.0.x64.deb.tar.gz

    apt-get install simple-scan sane sane-utils libsane xsane
    mkdir  /usr/share/sane/snapscan
    cp /usr/share/utsushi/esfw010c.bin /usr/share/sane/snapscan/

    lineinfile:
    /etc/sane.d/snapscan.conf
    /usr/share/sane/snapscan/esfw010c.bi

    scanimage -L
    device `escl:https://192.168.1.100:443' is a ESCL EPSON ET-3750 Series SSL flatbed scanner
    device `escl:http://192.168.1.100:443' is a ESCL EPSON ET-3750 Series flatbed scanner
    device `escl:http://127.0.0.1:60000' is a ESCL ET-3750 Series [583445513037323005] flatbed scanner

USB 3 scanner workaround:

    /etc/systemd/user.conf
    
At the bottom of the file:

    DefaultEnvironment=SANE_USB_WORKAROUND=1

VSCode?:

    sudo apt install software-properties-common apt-transport-https wget
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"


ext install eamodio.gitlens


openconnect --juniper  https://hd.nrel.gov

