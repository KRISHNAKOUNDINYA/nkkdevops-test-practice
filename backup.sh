#!/bin/bash
<< readme
this is script for backup for 5 days rotation
usage:
./backup.sh <path to the source> <path to the backup location>
readme
function display_usage {
      echo "usage:./backup.sh <path to the source> <path to the backup location>"
}
if [ $# -eq 0 ]; then
      display_usage
fi

source_dir=$1
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')
backup_dir=$2 

function create_backup {

    zip -r "${backup_dir}/backup_${timestamp}.zip" "${source_dir}"
    if [ $? -eq 0 ]; then
    echo "backup generated successfully for ${timestamp}"
    fi
}

function perform_rotation{
    backups=($(ls -t "${backup_dir}/backup_"*.zip 2>/dev/null))
    echo "${backups[@]}"
}

create_backup
perform_rotation