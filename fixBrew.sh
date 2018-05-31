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
repair_brew

exit;
