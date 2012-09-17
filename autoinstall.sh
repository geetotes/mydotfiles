#/bin/bash
echo "Autoinstalling..."
# TODO put a check for existing .bash_profile

# TODO
# Should loop through existing files in directory
# and link extensioned files into ther approrate place
# and directories get linked as well


handleFile () {
[ -f "$HOME/.$f" ] && unlink "$HOME/.$f" 
ln -s "$PWD/$f" "$HOME/.$f" 
echo $PWD
}

for f in profile vimrc screenrc
do
handleFile
done



