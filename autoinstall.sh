#/bin/bash
echo -p "Autoinstalling..."
# TODO put a check for existing .bash_profile

# TODO
# Should loop through existing files in directory
# and link extensioned files into ther approrate place
# and directories get linked as well

workDir=`PWD`

handleFile () {
[ -f "~/$f" ] && unlink -rf "~/$f" 
ln -s "$PWD/$f" "~/.$f"
}

for f in profile vimr screenrc
do
handleFile
done



