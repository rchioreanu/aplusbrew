#!/bin/bash

function repair_brew {
    echo "--------> Running brew update<--------"
    /usr/local/bin/brew update
    echo "--------> Updating brew using the full path <--------"
    ~/.brew/bin/brew update
    echo "--------> Setting the brew PATH <--------"
    echo "export PATH=~/.brew/bin:$PATH" >> ~/.zshrc
    echo "--------> Done. Please restart $TERM_PROGRAM to apply settings. 😄 <--------"
}

echo "Setting a vpn"
git config --global http.https://github.com.proxy https://121.129.127.209:80
repair_brew

exit;
