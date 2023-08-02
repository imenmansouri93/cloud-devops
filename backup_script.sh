#!/bin/bash

# Replace 'container_name' with the name of your running container.
container_name="multi-container-app"

# Replace '/path/to/backup' with the path in the container from where you want to back up files.
container_backup_path="/srv/jupyterhub"

# Replace 'local_backup_path' with the path on your local machine where you want to save the backup files.
local_backup_path="C:\Users\USER1\Desktop\Holbertonschool"

# Replace 'remote_repository_url' with the URL of your remote repository where you want to push the backup files.
remote_repository_url="https://github.com/imenmansouri93/cloud-devops.git"

# Step 1: Backup files from the container to the local machine.
docker cp multi-container-app:$/srv/jupyterhub C:\Users\USER1\Desktop\Holbertonschool

# Step 2: Change directory to the backup path on your local machine.
cd $C:\Users\USER1\Desktop\Holbertonschool

# Step 3: Initialize a new Git repository if not already done.
if [ ! -d ".git" ]; then
  git init
fi

# Step 4: Add all files to the Git repository.
git add .

# Step 5: Commit the changes.
git commit -m "Backup files from container."

# Step 6: Push the changes to the remote repository.
git remote add origin https://github.com/imenmansouri93/cloud-devops.git
git push -u origin master
