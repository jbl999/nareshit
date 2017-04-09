#!/bin/bash

#MAKE THE DIRECTORY ON WHICH YOU WANT TO TAKE THE BACKUP
echo "Enter the folder name on which you want to take the backup"
read=folder
FOLDER=$1
DSRDIR='mkdir $FOLDER'

 if [ $? eq 0 ] ; then

#mention the directory which you want to take BACKUP

echo "enter the directory which you want to take the backup"
read=BACDIR
BACDIR=$1
SRCDIR=$BACDIR
exit
fi

# This Command will add date in Backup File Name.
TIME=`date +%b-%d-%y`

# Here i define Backup file name format.
FILENAME= etc-$TIME.tar.gz

tar -cpzf $DSRDIR/$FILENAME $SRCDIR
#END
