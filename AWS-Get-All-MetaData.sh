#! /bin/bash
# To be run inside an AWS instance only
# Author: ulaskan

echo -e "Following is the MetaData for this EC2 instance: \n"
EC2meta=$(curl -s http://169.254.169.254/latest/meta-data/)

while read line 
do
        echo -e "\e[1;36m$line \e[0m: $(curl -s http://169.254.169.254/latest/meta-data/$line)"
done <<< "$EC2meta"
echo -e "\n"

