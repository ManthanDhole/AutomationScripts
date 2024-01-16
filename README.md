# How to use the scripts available here to achieve certain specific tasks.

1. Clone Repository and Create a New Branch: CloneRepo_CreateNewBranch.sh
This script needs to execute with 2 parameters

a. The URL of the Repository/Project
b. The New Branch Name that you want to create in the Remote Repository

Open the Bash Terminal enter the command in following format
cmd: ./CloneRepo_CreateNewBranch.sh <repositoryURL> <newBranchName>
Ex: ./CloneRepo_CreateNewBranch.sh https://github.com/ManthanDhole/AutomationScripts.git NewName_ofYourChoice

How the CloneRepo_CreateNewBranch.sh works?
This will first create a folder with the name in the format of `Project_NewBranchName`, 
then Clone the Remote repository with default branch name as `development` (you can replace this to your desired default branch name in the script) 
to your local machine in the newly created folder, 
then it will navigate to the cloned repository and then checkout the current repository to the new branch name and lastly it will push the newly created branch to the remote repository.
