
mkdir Task_6
mv Task_6.tar.bz2 ~/Task_6
cd Task_6/
ls
tar -xvjf Task_6.tar.bz2
cat Task_6/README.md 
sudo useradd alice
sudo useradd bob
sudo groupadd project_group
sudo usermod -aG project_group alice
sudo usermod -aG project_group bob
zip -r files.zip . -i files/
sudo chgrp project_group files.zip 
sudo chmod 640 files.zip 
ls -l files.zip
touch commands.sh
nano commands.sh
