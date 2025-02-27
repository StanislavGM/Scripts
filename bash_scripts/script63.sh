vim --version > /dev/null 2>&1
if [ $? -eq 0 ];then
echo "Vim is already installed"
else
sudo yum install -yq vim
fi
# Validating wget installed or onot
wget --version > /dev/null 2>&1
if [ $? -eq 0 ];then
echo "Wget is already installed"
else
sudo yum install -yq wget
fi
