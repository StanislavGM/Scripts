function backupWebRoot()
{
tar -cvf surprice.tar "$1" | zip -n .jpg:.gif:.png surprice2.zip "$2" >> $errlog88
echo -e "\n Tarball created!\n"
}
