repositoryURL=$1
newBranch=$2

projectName=$(echo $repositoryURL | cut -d '/' -f 5 | cut -d '.' -f 1)
echo $projectName

folderName=$projectName"_"$(echo $newBranch | cut -d '/' -f 2)

mkdir $folderName
cd $folderName

echo "Cloning remote branch from $repositoryURL"

# Clone the development branch of a remote repository
git clone -b development $repositoryURL

cd $projectName

echo "Creating New Branch: $newBranch"

# Create a new branch call feature from development
git checkout -b $newBranch development

echo "Pushing New Branch: $newBranch to $repositoryURL"
# Push the newly created branch to remote repository
git push origin $newBranch