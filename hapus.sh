# Script hapus user SSH
# Created by @LdSeptian

read -p "=[Nama user SSH yang akan dihapus : " Nama

userdel -r $Nama
echo -e "\e[30;1m"