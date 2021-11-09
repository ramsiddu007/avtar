@echo off 
REM SET PGHOST= 
REM SET PGDATABASE=
REM SET PGUSER=devuser
REM SET PGPASSWORD=SBAn@lyt1cs2020
SET PGPASSWORD=pwd
cd / 
cd Program Files\PostgreSQL\9.6\bin\ 
echo 'Copy Start' 

REM psql.exe -h localhost -p 5432 -U postgres --password="root" -d northwind -c "create database AdventureWorks;"
REM psql.exe -h localhost -p 5432 -U postgres --password="root" -d northwind -c "create database pagila;"
REM psql.exe -h localhost -p 5432 -U postgres --password="root" -d northwind -c "create database usda;"

REM pg_restore.exe -h localhost -p 5432 -U postgres --password="root" -d AdventureWorks --verbose "C:\Users\rgunde\OneDrive - Company\Ramanna\PostgreSQL\DB_Backups\AdventureWorks.tar"

REM pg_restore.exe -h localhost -p 5432 -U postgres --password="root" -d pagila --verbose "C:\Users\rgunde\OneDrive - Company\Ramanna\PostgreSQL\DB_Backups\pagila.tar"

REM pg_restore.exe -h localhost -p 5432 -U postgres --password="root" -d usda --verbose "C:\Users\rgunde\OneDrive - Company\Ramanna\PostgreSQL\DB_Backups\usda.tar"

  REM SAT-AmenityCategorizaton
	REM psql.exe -h localhost -p 5432 -U rms -d testdb_prod_backup -c "\COPY rm_amenityname FROM 'C:\Users\rgunde\Desktop\Others\AC\AmenityCategoryAmenityId.csv' USING DELIMITERS ',' WITH NULL AS '\null'"
	
REM SAT-AmenityCategorizaton
	REM psql.exe -h localhost -p 5432 -U rms -d testdb -c "\COPY rm_amenityname FROM 'C:\Users\rgunde\Desktop\Others\AC\AmenityCategoryAmenityId.csv' USING DELIMITERS ',' WITH NULL AS '\null'"
	
	
  REM SAT-Executing SQL File 
	REM psql.exe -h localhost -p 5432 -U rms -d testdb -f  "C:\Users\rgunde\Desktop\Others\AC\AmenityNameUpdateScriptSept30.sql"
 
	REM DEV-AmenityCategorizaton
	REM psql.exe -h localhost -p 5432 -U rms -d testdb -f  "C:\Users\rgunde\OneDrive - Company\Company\AO\SAT\testdb\DataFix\DEC\AmenityCategories_Mapping_Update_Scripts_Dec07.sql"
	
	
	REM SAT-AmenityCategorizaton
	REM psql.exe -h localhost -p 5432 -U rms -d testdb -c "\COPY NewAmenityCategoryMapping FROM 'C:\Users\rgunde\OneDrive - Company\Company\AO\SAT\testdb\DataFix\DEC\NewRecommendatedAmenityCategoriesDec07.csv' USING DELIMITERS '^' WITH NULL AS '\null'"
	
	REM SAT-ActiveUnifiedAmenities
	REM psql.exe -h localhost-p 5432 -U rms -d testdb_prod_backup -c "\COPY ActiveUnifiedAmenities FROM 'C:\Users\rgunde\OneDrive - Company\Company\AO\SAT\UnifiedAmenties\UA_Details_CSV_Jan28.csv' USING DELIMITERS '^' WITH NULL AS '\null'"
	
	REM ************** SAT-AmenityCategorizaton Table Backups *****************
	
	REM nohup pg_dump --host localhost --port 5432 -U rms --format custom --verbose --file "/exports/rgunde/AmenityName_Bkp_March16.backup" --table public.AmenityName testdb_prod_backup > /exports/rgunde/AmenityName_Bkp_March16.log 2>&1 &
	REM echo 'AmenityName - Copy Success!'
	
	REM pg_dump --host localhost --port 5432 -U rms --format custom --verbose --file "/exports/rgunde/AmenityProperty_Bkp_March16.backup" --table public.AmenityProperty testdb_prod_backup > /exports/rgunde/AmenityProperty_Bkp_March16.log 2>&1 &
	REM echo 'AmenityProperty - Copy Success!' 
	
	REM nohup pg_dump --host localhost --port 5432 -U rms --format custom --verbose --file "/exports/rgunde/AmenityPropertyGrouping_Bkp_March16.backup" --table public.AmenityPropertyGrouping testdb_prod_backup > /exports/rgunde/AmenityPropertyGrouping_Bkp_March16.log 2>&1 &
	REM echo 'AmenityPropertyGrouping - Copy Success!' 	
	
	REM **************  Table Restore *****************
	
	REM pg_restore --host localhost -p 5432 -U rms -d testdb --data-only --verbose --schema="public" --table AmenityName "C:\Users\rgunde\OneDrive - Company\Company\AO\SAT\testdb\Categorization\backups\AmenityName_Bkp_March16.backup" 
	 REM echo 'AmenityName - Restore Done!'
	
	REM pg_restore --host localhost -p 5432 -U rms -d testdb --data-only --verbose --schema="public" --table AmenityProperty  "C:\Users\rgunde\OneDrive - Company\Company\AO\SAT\testdb\Categorization\backups\AmenityNameProperty_Bkp_March16.backup" 
	REM echo 'AmenityProperty - Restore Done!' 
	
	REM pg_restore --host localhost -p 5432 -U rms -d testdb --data-only --verbose --schema="public" --table AmenityPropertyGrouping  "C:\Users\rgunde\OneDrive - Company\Company\AO\SAT\testdb\Categorization\backups\AmenityPropertyGrouping_Bkp_March16.backup" 
	REM echo 'AmenityPropertyGrouping - Restore Done!' 
  
  REM AmenityRemapping Datafix - SAT    
	psql.exe -h localhost -p 5432 -U rms -d testdb -c "\COPY newamenitymapping_may FROM 'C:\Users\rgunde\OneDrive - Company\Company\AO\SAT\testdb\2021\Amenity Category Reconsillation\Amenity_Categorization_Business_Approved_List_05062021CSV.csv' USING DELIMITERS '$' WITH NULL AS '\null'"
	
	 echo 'Success!' 
	
pause
