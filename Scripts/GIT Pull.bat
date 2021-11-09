@echo off
cd / 

cd C:\GIT

echo *******************Cloning the Repo *******************
git clone https://tfs.company.com/tfs/company/project/_git/repoName

cd repoName

echo ******************* Checkout the Release Branch *******************
git checkout ReleaseBranch

echo ******************* Pulling The ReleaseBranch Branch *******************
git pull

pause