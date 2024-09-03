#每天定时备份
mkdir -p ~/backup
vim ~/backup/backup.sh

#quilibrium

#!/bin/sh
#打包备份文件
zip -r ~/backup/store_$(date -d "today" +"%Y%m%d_%H%M%S").zip ~/ceremonyclient/node/.config/store
#tar -zcf ~/backup/store_$(date -d "today" +"%Y%m%d_%H%M%S").tar.gz ~/ceremonyclient/node/.config/store
#删除2天以后的数据
find ~/backup/store* -type f -mtime +2 -exec rm {} \;

chmod +x ~/backup/backup.sh
#echo "0 0 * * * cp -r ~/ceremonyclient/node/.config/store ~/backup/store_$(date +%Y%m%d)" | crontab -
#echo "0 0 * * * sh ~/backup/backup.sh" | crontab -