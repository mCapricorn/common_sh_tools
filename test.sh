wget -O ubuntu_clash.sh https://raw.githubusercontent.com/mCapricorn/common_sh_tools/main/ubuntu/ubuntu-clash.sh && chmod +x ubuntu_clash.sh && ./ubuntu_clash.sh



#刪除先前quil screen
screen -ls | grep Detached | grep quil | awk -F '[.]' '{print $1}' | xargs -I {} screen -S {} -X quit
screen -ls | grep Detached | grep Quil | awk -F '[.]' '{print $1}' | xargs -I {} screen -S {} -X quit