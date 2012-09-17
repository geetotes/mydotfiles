#/bin/bash
echo -p "Autoinstalling..."
# TODO put a check for existing .bash_profile
`rm -rf ~/.bash_profile`
`ln -s profile ~/.bash_profile`
