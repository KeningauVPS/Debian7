# Script hapus user SSH

read -p "=[Nama user SSH yang akan dihapus : " Nama

userdel -r $Nama
echo -e "\e[30;1m"
