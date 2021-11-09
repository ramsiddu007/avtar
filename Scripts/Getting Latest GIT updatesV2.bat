@echo off
cd / 

cd C:\GIT

REM echo *******************Cloning the aodb Repo *******************
REM git clone https://tfs.realpage.com/tfs/Realpage/SBA/_git/aodb

cd aodb

REM echo ******************* Checkout the AO.2020.10.Ramanna Branch *******************
REM git checkout AO.2020.10.Ramanna

REM echo ******************* Pulling The AO.2020.10.Ramanna Branch *******************
REM git pull
echo ********** Checkout Into Release Branch (Release/AO.2020.10) **************
git checkout Release/AO.2020.10

echo ********** Pulling Release Branch (Release/AO.2020.10) Code **************
git pull

echo ********** Checkout Into My Branch (AO.2020.10.Ramanna) **************
git checkout AO.2020.10.Ramanna

echo ********** Re-basing The Release Branch (Release/AO.2020.10) Into My Branch (AO.2020.10.Ramanna) **************
git rebase Release/AO.2020.10

echo ********** Pulling Latest Changes Into My Branch (AO.2020.10.Ramanna) **************
git pull

echo ********** Pushing the Latest Changes Into My Branch (AO.2020.10.Ramanna) **************
git push

pause


