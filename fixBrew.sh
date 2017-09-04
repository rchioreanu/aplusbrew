echo "Updating brew using the full path"
~/.brew/bin/brew update
echo "Setting the brew PATH"
echo "export PATH=~/.brew/bin:$PATH" >> ~/.zshrc
echo "Done. Please restart $TERM_PROGRAM to apply settings. 😄"
exit
