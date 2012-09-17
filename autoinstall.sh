#/bin/bash
echo "Autoinstalling..."

handleFile () {
[ -f "$HOME/.$f" ] && unlink "$HOME/.$f" 
ln -s "$PWD/$f" "$HOME/.$f" 
}

handleDir () {
[ -d "$HOME/$d" ] && unlink "$HOME/$d" 
ln -s "$PWD/$d" "$HOME/$d" 
}

#check for these files
for f in bash_profile vimrc screenrc
do
  handleFile
done

#check for these directories
for d in streams .vim
do
  handleDir
done

# reload bash settings
source ~/.bash_profile
