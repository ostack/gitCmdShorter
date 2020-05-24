function showFilesInHomeBinDir(){
	HomeBinFiles=`ls $HOME/bin`
	echo "  "$HomeBinFiles
}

function delteGitCmdShorterFiles(){
	files=`ls ./`
	for file in $files;do
	  echo "  "$file
	  rm -f $HOME/bin/$file
	done
}
echo "  "====Start to uninstall GitCmdShorter====
echo "  "1.Currnt files in $HOME/bin====
showFilesInHomeBinDir
echo "  "2.Try to delete files $HOME/bin====
delteGitCmdShorterFiles
echo "  "3.Currnt files in $HOME/bin====
showFilesInHomeBinDir
echo "  "====End to uninstall GitCmdShorter====
