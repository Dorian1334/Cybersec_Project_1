#!/bin/bash
tar -cvf /var/backup/home.tar /home
mv /var/backu0o/home.tar /var/backup/home.01062022.tar
ls -lah /var/backup >> /var/backup/file_report.txt
free -h >> /var/backup/disk_report.txt
