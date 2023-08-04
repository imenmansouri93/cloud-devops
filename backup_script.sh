#!/bin/bash

container_name="relaxed_pare"

container_backup_path="/home/jovyan"

local_backup_path="C:\Users\USER1\Desktop\backup-data"

remote_repository_url="https://github.com/imenmansouri93/mern_Application.git"

docker cp $relaxed_pare:$/home/jovyan C:\Users\USER1\Desktop\backup-data

cd C:\Users\USER1\Desktop\backup-data

if [ ! -d ".git" ]; then
  git init
fi

git add .
.
git commit -m "Backup files from container."

git remote add origin https://github.com/imenmansouri93/mern_Application.git
git push -u origin master
