#!/usr/bin/zsh
#Develop by  shambhala
#Tue Jul 15 10:09:57 AM EDT 2025

#VARIABLE
read -p "Enter the folder path: " FOLDER_PATH

if [[ ! -d "$FOLDER_PATH" ]]
then
	echo "You Provided folder is not exist"
	exit 1
fi


folder_name=$(basename $FOLDER_PATH)

parent_directory=$(dirname $FOLDER_PATH)

timestamp=$(date +"%Y%m%d_%H%M%S")

backup_name=${folder_name}_backup_${timestamp}.zip


cd $parent_directory || exit
pwd

zip -r $backup_name $folder_name


if [ $? -eq 0 ]
then
    echo "✅ Backup created: $backup_name"
    echo " the file save in:  $parent_directory/$backup_name"

else
    echo "❌ Backup failed."
fi

