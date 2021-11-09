@echo off 
REM SET PGPASSWORD=userpwd 
cd / 
cd Program Files\PostgreSQL\9.6\bin\ 
echo 'Fn Started' 

psql.exe -h localhost -p 5432 -U rms -d cds2 -c "select get_fun();"

echo 'Fn Ended' 
pause
