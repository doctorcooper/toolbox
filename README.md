# Vapor Toolbox 4.0 on Ubuntu 18.04 and swift 5.2

1. Install packages from apt: git clang libcurl3 libpython2.7 libpython2.7-dev curl zlib1g-dev

sudo apt-get install git clang libcurl3 libpython2.7 libpython2.7-dev curl zlib1g-dev

2. Install swift from oficial site:
https://swift.org/download/

2.1. Download swift 5.2 archive:

wget https://swift.org/builds/swift-5.2-branch/ubuntu1804/swift-5.2-DEVELOPMENT-SNAPSHOT-2020-03-18-a/swift-5.2-DEVELOPMENT-SNAPSHOT-2020-03-18-a-ubuntu18.04.tar.gz

2.2. Extract downloaded archive:

tar xzf swift-5.2-DEVELOPMENT-SNAPSHOT-2020-03-18-a-ubuntu18.04.tar.gz 

2.3. Move extracted binaries to /usr/share/swift:

sudo mv swift-5.2-DEVELOPMENT-SNAPSHOT-2020-03-18-a-ubuntu18.04 /usr/share/swift

2.4. Add variable eviropment to $PATH:

echo "export PATH=/usr/share/swift/usr/bin:$PATH" >> ~/.bashrc

2.5. Restart .bashrc:

source ~/.bashrc

2.6. Check swift version:

swift --version

3. Clone this repo:

git clone https://github.com/doctorcooper/toolbox.git

3.1. Checkout branch "ubuntu18.04"

cd toolbox
git checkout ubuntu18.04

4. Build toolbox:

swift swift build -c release --disable-sandbox

5. Move vapor binaries to /usr/local/bin/

sudo mv .build/release/vapor /usr/local/bin

5.1. Go folder up level:

cd ..

6. Try create new template from vapor toolbox, but he will not compile. You can clone my base template from my repo: 

vapor new template - from vapor repo

git clone https://github.com/doctorcooper/vapor-base-template.git - my repo

6.1. Move to template directory and run "vapor build"

cd template
vapor build

6.2. If build was success, try vapor run serve. 

vapor run serve
vapor run serve -H [ip] -P [port]

7.  If you have no errors - on localhost or your server you will see "It works!"

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
