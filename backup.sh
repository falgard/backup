#!/bin/sh
####################################
#
# Backup to NFS mount script.
#
####################################

# What to backup. 
backup_files="/home/kungen/Crypt"

# Where to backup to.
dest="/home/kungen/Dropbox/backup"

# Create archive filename.
day=$(date +%F)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar.
tar czf $dest/$archive_file $backup_files

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest

