# Vapor Toolbox 4.5.1 on Ubuntu 18.04 and swift 5.2

- Install packages from apt: git clang libcurl4 libpython2.7 libpython2.7-dev curl zlib1g-dev
```
sudo apt-get install git clang libcurl4 libpython2.7 libpython2.7-dev curl zlib1g-dev
```
- Install swift from oficial site:
https://swift.org/download/

- Download swift 5.2 archive:
```
wget https://swift.org/builds/swift-5.2.3-release/ubuntu1804/swift-5.2.3-RELEASE/swift-5.2.3-RELEASE-ubuntu18.04.tar.gz
```
- Extract downloaded archive:
```
tar xzf swift-5.2.3-RELEASE-ubuntu18.04.tar.gz
```
- Move extracted binaries to /usr/share/swift:
```
sudo mv swift-5.2.3-RELEASE-ubuntu18.04 /usr/share/swift
```
- Add variable eviropment to $PATH:
```
echo "export PATH=/usr/share/swift/usr/bin:$PATH" >> ~/.bashrc
```
- Restart .bashrc:
```
source ~/.bashrc
```
- Check swift version:
```
swift --version
```
- Clone this repo:
```
git clone https://github.com/doctorcooper/toolbox.git
```
- Checkout branch "ubuntu18.04"
```
cd toolbox
git checkout ubuntu18.04
```
- Build toolbox:
``` 
swift build -c release --disable-sandbox
```
- Move vapor binaries to /usr/local/bin/
```
sudo mv .build/release/vapor /usr/local/bin
```
- Go folder up level:
```
cd ..
```
- Try create new template from vapor toolbox, but he will not compile:
```
vapor new template 
```
- or my repo:
```
git clone https://github.com/doctorcooper/vapor-base-template.git
```
- Move to template directory and run "vapor build"
```
cd vapor-base-template
vapor build
```
- If build was success, try vapor run serve. 
```
vapor run serve
vapor run serve -H [ip] -P [port]
```
-  If you have no errors - on localhost or your server you will see "It works!"

<p align="center">
    <a href="https://docs.vapor.codes/4.0/">
        <img src="http://img.shields.io/badge/read_the-docs-2196f3.svg" alt="Documentation">
    </a>
    <a href="https://discord.gg/vapor">
        <img src="https://img.shields.io/discord/431917998102675485.svg" alt="Team Chat">
    </a>
    <a href="LICENSE">
        <img src="http://img.shields.io/badge/license-MIT-brightgreen.svg" alt="MIT License">
    </a>
    <a href="https://circleci.com/gh/vapor/toolbox">
        <img src="https://circleci.com/gh/vapor/toolbox.svg?style=shield" alt="Continuous Integration">
    </a>
    <a href="https://swift.org">
        <img src="http://img.shields.io/badge/swift-5.2-brightgreen.svg" alt="Swift 5.2">
    </a>
</center>
