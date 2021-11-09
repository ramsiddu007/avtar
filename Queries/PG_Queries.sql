SR-456788

-- rainbow interface on psql
$ sudo snap install lolcat
\pset pager always
\setenv PAGER 'lolcat -f | less -iMSx4R -FX'
Source: https://akorotkov.github.io/blog/2021/05/17/rainbow-psql-output/
-- Connections
rgunde@rcoylswwtom001 

sudo su - rms
 
psql -h rcsyaodbpgr001.realpage.com -U rms -d postgres
\c ysanalysis

psql -h rcsyaodbpgr002 -U rms -d postgres
\c cds2

-- Firewall check in windows
service iptables status
-- GIT
 git lfs install --skip-smudge
 git checkout AO.2019.12
 git log
 git pull
 git status
 git reset --hard
 git status
 git log
 history

git checkout -b AO.2020.01_Ramanna origin/AO.2020.01
git pull
git push origin AO.2020.01_Ramanna

-- AO.2020.10.Ramanna
git clone https://tfs.realpage.com/tfs/Realpage/SBA/_git/aodb
cd aodb
git checkout AO.2020.11.Ramanna
git pull

-- Configuring the UserName and Email
git config --global user.name "Ramanna Gunde"
git config --global user.email "ramanna.gunde@realpage.com"

git clone https://tfs.realpage.com/tfs/Realpage/AOS/_git/aodb
cd aodb
git checkout master
git pull
 
 git log -G. --patch "C:\AODB\AO.2020.01\aodb\ysanalysis\amenity_endpoints.sql"
 git log -G. --patch "C:\AODB\AO.2020.01\aodb\node\amenity_metrics.sql"
 git log -G. --patch "C:\AODB\AO.2020.01\aodb\ysa_node\pivot.sql"

-- rebase
git checkout AO.2020.08
git pull
git checkout AO.20202.08.Ramanna
git rebase AO.2020.08
git pull
git push

 
select string_agg(column_name ||' '||upper(data_type), ', ') from information_schema.columns where table_name='tmp_pivote_rmn';

create temp table tmp_pivote_rmn as 

-- Notepad ++ 

			^(.*?)$\s+?^(?=.*^\1$) (CTRL + H --> Find What) 

-- Functions
	select trim(replace(replace(replace(replace(pg_get_functiondef(pr.oid),'NUMERIC(10, 0)','integer'),'NUMERIC(20, 0)','bigint'),'NUMERIC(5, 0)','smallint'),'NUMERIC(1, 0)','bit')||';'||' 
GRANT EXECUTE ON FUNCTION '||nsp.nspname||'.'||pr.proname||'('||pg_catalog.pg_get_function_identity_arguments(pr.oid)||') TO user1;') as sp_def 
FROM pg_proc pr JOIN pg_namespace nsp ON nsp.oid=pr.pronamespace WHERE proisagg = FALSE AND nspname = 'schema_name' and pr.proname='sp_name';

select nsp.nspname, pr.proname as spname, pg_catalog.pg_get_function_identity_arguments(pr.oid) as recreate_sp 
FROM pg_proc pr JOIN pg_namespace nsp  
ON nsp.oid=pr.pronamespace  
WHERE proisagg = FALSE  
AND nspname = 'orderplacement_dbo' -- and pr.proname='ap_in_tr_tn_prod_info' 
and pg_catalog.pg_get_function_identity_arguments(pr.oid) ilike '%par_input_param1%' 
and split_part(substring(pg_catalog.pg_get_function_identity_arguments(pr.oid), strpos(pg_catalog.pg_get_function_identity_arguments(pr.oid), 'par_input_param1')), ',', 1) ilike 'par_input_param1 varchar' 
 
-- Finding Functions with Data Types: 
SELECT quote_ident(b.nspname) || '.' || quote_ident(a.proname) || '(' || pg_catalog.oidvectortypes(a.proargtypes) || ')' as nombre_function  
FROM pg_proc a  INNER JOIN pg_namespace b on a.pronamespace = b.oid  
WHERE b.nspname NOT IN ('pg_catalog', 'information_schema', 'public')  
AND proisagg = 'f' ORDER BY 1 ASC;

SELECT proname, proargnames, prosrc  
 FROM pg_proc 
 WHERE prosrc ILIKE '%emp%';

		powershell -Command "(gc C:\Ramanna\Restore\Tables_Insert_Scripts\public.get_emp_details_range_for_0_17940_rows.sql) -replace 'public.get_emp_details_range_for_0_17940_rows', 'public.get_emp_details' | Out-File C:\Ramanna\Restore\Tables_Insert_Scripts\public.get_emp_details_range_for_0_17940_rows.sql" -encoding ASCII 

		Get-ChildItem -Path C:\Ramanna\Practice -recurse |  Select-String -Pattern "PS1"  

		dir /b /a-d 

	for /f "tokens=*" %%A in (C:\Users\RAMANNA\Desktop\rmn.txt) do ( 

		echo %%A 

	) 

	C:\Ramanna\Newly Migrated SPs>for %f in (*.sql) do type "%f" >> "C:\Ramanna\Newly Migrated SPs\output.txt" 

	#!/bin/bash 

	psql -X -U postgres -h localhost -d testdb  

	<< EOF 
	select *from run; 
	EOF 
	echo "sql script successful" 
 
-- Copy Data Loading from CSV File into Database Table 
	@echo off 
	SET PGPASSWORD=userpwd 
	cd / 
	cd Program Files\PostgreSQL\10.4\bin\ 
	echo 'Copy Start' 
	cd / 
	cd Program Files\PostgreSQL\10.4\bin\ 
	psql.exe -h localhost -p 5432 -U pgadmin -d testdb -c "\COPY test_ram FROM 'C:\Users\RAMANNA\Downloads\emp.csv' USING DELIMITERS '^' WITH NULL AS '\null'" 
 
	psql.exe -h localhost -p 5432 -U pgadmin -d testdb -c "CREATE table if not exists public.test100 (empno int ,  ename text);" -c "\COPY public.test100 FROM 'C:\Users\RAMANNA\Downloads\emp.csv' USING DELIMITERS '^' WITH NULL AS '\null'" 
	echo 'Copy Success!' 
 
    psql.exe -h localhost -p 5432 -U rms -d testdb_newetl_testing -c "\COPY amenityname_b4_algorithm FROM 'C:\Users\rgunde\Desktop\amenityname_b4_algorithm_cap_delimiter.csv' USING DELIMITERS E'\t' WITH NULL AS 'null'"

-- Executing SQL File 
	psql.exe -h localhost -p 5432 -U pgadmin -d ProdSpsTestDB -f  "C:\Users\RAMANNA\Desktop\functions_from_PG.sql" 
 
-- Getting List of Files 
	 for /f "delims=" %%A in ('dir /b "C:\Ramanna\DataLoading\*.sql"') do ( 
	 echo psql.exe -h localhost -p 5432 -U pgadmin-d testdb -f  "C:\Ramanna\Restore\%%A" 
	 ) 
	  
-- pg_dump 
 
	pg_dump --host localhost --port 5432 --username user1 --format custom --verbose --file "H:\tablebackups\emp_details.backup" --table public.emp_details testdb 
	
	pg_dump --host localhost --port 5432 --username user1 --format custom --verbose --file "H:\tablebackups\public_schema_bkp.backup" --schema= public dbname 
	
	pg_dump --host localhost --port 5432 --username rms --format custom --verbose --file "C:\Users\rgunde\OneDrive - RealPage\RealPage\AO\SAT\Backups\amenity_analytics_bkp.backup" amenity_analytics
	
 
-- Multi Tables plain Script (DDL Only) 
	pg_dump --host localhost --port 5432 --username user1 --format plain --schema-only --verbose --file "C:\Ramanna\Backups\Table Bkps\get_emp_details_sp_tables_backups.sql" --table public.emp --table public.dept testdb 
	 
	pg_dump --host localhost --port 5432 --username user1 --format plain --schema=public --schema-only --verbose --file "C:\Ramanna\Backups\Table Bkps\tables_backups.sql" -t "*_details" testdb 
	 
-- Data Only with Insert Statements 
	pg_dump --host localhost --port 5432 --username user1 --format plain --data-only --column-inserts --verbose --file "C:\Ramanna\Backups\Table Bkps\emp_details_tables_backups.sql" --table public.emp --table public.dept testdb 
	 
--PG Restore 
	pg_restore --host locahost --port "5432" --username "user1" --password="userpwd" --dbname "testdb" --data-only --verbose --schema="public" --table "emp_details"  "H:\tablebackups\emp_details.backup" 
 
 -- Kill the process
 
 select pg_terminate_backend(pid) FROM pg_stat_activity where state != 'idle' AND pid NOT IN (27604,pg_backend_pid());
 
-------------------- Batch Scripts End ------------------- 
	 
-- Hours Diff. 
	select (select (count(*)-1)*24 from generate_series('2010-02-01 8:56:20.953'::date, now()::Date, interval '1 day')) + extract(hour from now()::timestamp) - extract(hour from '2010-02-01 8:56:20.953'::timestamp); 
  
 -- Queries on Views  
  
	select  string_agg(' 
	-- View: '||table_schema||'.'||table_name||'; 
 
	-- DROP VIEW '||table_schema||'.'||table_name||'; 
					    
	create or replace view '||table_schema||'.'||table_name||' as  
	'||view_definition||' 
	GRANT ALL ON TABLE '||table_schema||'.'||table_name||' TO user1 WITH GRANT OPTION; 
	GRANT ALL ON TABLE '||table_schema||'.'||table_name||' TO user2; 
	GRANT ALL ON TABLE '||table_schema||'.'||table_name||' TO user3 WITH GRANT OPTION; 
	', ' 
								  ') as view_def from information_schema.views where table_schema='public'; 
								   
 
	select  string_agg('drop view if exists '||table_schema||'.'||table_name||'; 
					   ', '') as view_def from information_schema.views where table_schema='public' 
	and table_name ilike any (array['emp', 'dept']); 
 
	 
	SELECT DISTINCT 
		(current_database())::information_schema.sql_identifier AS view_catalog, 
		(nv.nspname)::information_schema.sql_identifier AS view_schema, 
		(v.relname)::information_schema.sql_identifier AS view_name, 
		(current_database())::information_schema.sql_identifier AS table_catalog, 
		(nt.nspname)::information_schema.sql_identifier AS table_schema, 
		(t.relname)::information_schema.sql_identifier AS table_name 
	FROM 
		pg_namespace nv, 
		pg_class v, 
		pg_depend dv, 
		pg_depend dt, 
		pg_class t, 
		pg_namespace nt 
	WHERE ((((((((((((nv.oid = v.relnamespace 
													AND v.relkind = 'v'::"char" 
													AND v.oid = dv.refobjid) 
												AND (dv.refclassid = ('pg_class'::regclass)::oid)) 
											AND (dv.classid = ('pg_rewrite'::regclass)::oid)) 
										AND (dv.deptype = 'i'::"char")) 
									AND (dv.objid = dt.objid)) 
								AND (dv.refobjid <> dt.refobjid)) 
							AND (dt.classid = ('pg_rewrite'::regclass)::oid)) 
						AND (dt.refclassid = ('pg_class'::regclass)::oid)) 
					AND (dt.refobjid = t.oid)) 
				AND (t.relnamespace = nt.oid)) 
			AND (t.relkind = ANY (ARRAY['r'::"char", 'v'::"char"]))) 
		AND pg_has_role(t.relowner, 'USAGE'::text)) 
	ORDER BY 
		(current_database())::information_schema.sql_identifier, 
		(nv.nspname)::information_schema.sql_identifier, 
		(v.relname)::information_schema.sql_identifier, 
		(current_database())::information_schema.sql_identifier, 
		(nt.nspname)::information_schema.sql_identifier, 
		(t.relname)::information_schema.sql_identifier; 
		 
-- Queries on Sequences 
 
	select  string_agg(' 
	-- SEQUENCE: '||sequence_schema||'.'||sequence_name||'; 
 
	-- DROP SEQUENCE '||sequence_schema||'.'||sequence_name||'; 
					    
	CREATE SEQUENCE IF NOT EXISTS '||sequence_schema||'.'||sequence_name||'; 
					    
	GRANT SELECT, USAGE ON SEQUENCE '||sequence_schema||'.'||sequence_name||' TO user1 WITH GRANT OPTION; 
	GRANT ALL ON SEQUENCE '||sequence_schema||'.'||sequence_name||' TO user2; 
	GRANT ALL ON SEQUENCE '||sequence_schema||'.'||sequence_name||' TO user3 WITH GRANT OPTION; 
	', ' 
								  ') as seq_def from information_schema.sequences where sequence_schema='public'; 
							   
 
-- XMLTABLE 
	SELECT xmltable.*  FROM  tmp_test,  
	XMLTABLE( 
	  '/row/emp/emp_details' PASSING content  
	  COLUMNS  
	  id FOR ORDINALITY, 
		empid int PATH './@emp_id', 
	  ename varchar PATH './@emp_name' 
	);							   
								   
			 
-- Queries Executing on Talend: 
	"BEGIN; 
	--delete from public.test_country; 
	select public.get_emp_details(par_emp_id:='101'); 
	END" 
 
-- Database Objects 
 
	SELECT 
		n.nspname as schema_name 
		,CASE c.relkind 
		   WHEN 'r' THEN 'table' 
		   WHEN 'v' THEN 'view' 
		   WHEN 'i' THEN 'index' 
		   WHEN 'S' THEN 'sequence' 
		   WHEN 's' THEN 'special' 
		END as object_type 
		,count(1) as object_count 
	FROM pg_catalog.pg_class c 
	LEFT JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace 
	WHERE c.relkind IN ('r','v','i','S','s') 
	and n.nspname not in ('information_schema', 'pg_catalog', 'pg_toast', 'public')  
	and (n.nspname not ilike '%pg_temp%' and  n.nspname not ilike '%pg_toast') 
	GROUP BY  n.nspname, 
		CASE c.relkind 
		   WHEN 'r' THEN 'table' 
		   WHEN 'v' THEN 'view' 
		   WHEN 'i' THEN 'index' 
		   WHEN 'S' THEN 'sequence' 
		   WHEN 's' THEN 'special' 
		END 
	ORDER BY n.nspname, 
		CASE c.relkind 
		   WHEN 'r' THEN 'table' 
		   WHEN 'v' THEN 'view' 
		   WHEN 'i' THEN 'index' 
		   WHEN 'S' THEN 'sequence' 
		   WHEN 's' THEN 'special' 
		END ; 
		 
-- DB SIZEselect t1.datname AS db_name,  
	select pg_size_pretty(pg_database_size(t1.datname)) as db_size
	from pg_database t1
	order by pg_database_size(t1.datname) desc;
 
-- Table Size		 
	SELECT  relname as "Table",  pg_size_pretty(pg_total_relation_size(relid)) As "Size", 
   pg_size_pretty(pg_total_relation_size(relid) - pg_relation_size(relid)) as "External Size" 
   FROM pg_catalog.pg_statio_user_tables where relname='table_name'; 
    
   or 
    
   SELECT 
   relname AS table_name, 
   pg_size_pretty(pg_total_relation_size(relid)) AS total, 
   pg_size_pretty(pg_relation_size(relid)) AS internal, 
   pg_size_pretty(pg_table_size(relid) - pg_relation_size(relid)) AS external, 
   pg_size_pretty(pg_indexes_size(relid)) AS indexes 
    FROM pg_catalog.pg_statio_user_tables ORDER BY pg_total_relation_size(relid) DESC; 

-- Constraints 
	SELECT tc.table_schema,  
		tc.constraint_name,  
		tc.table_name,     
		string_agg(ccu.column_name, ', ' order by ccu.column_name) AS constraint_column_name, 
		tc.constraint_type 
	FROM  
		information_schema.table_constraints AS tc 
		JOIN information_schema.constraint_column_usage AS ccu 
		  ON ccu.constraint_name = tc.constraint_name 
		  AND ccu.table_schema = tc.table_schema 
	WHERE tc.table_name ilike '%_details' 
	and tc.table_schema = 'schem_name' 
	 and  replace(tc.table_name, '_details', '') ilike any(array['emp', 'dept']) 
	group by tc.table_schema,  
		tc.constraint_name,  
		tc.table_name, 
		tc.constraint_type; 
	 
 ---2 
	 SELECT tc.table_schema,  
		tc.constraint_name,  
		tc.table_name,     
		string_agg(ccu.column_name, ', ' order by ccu.column_name) AS constraint_column_name, 
		tc.constraint_type 
	FROM  
		information_schema.table_constraints AS tc 
		JOIN information_schema.constraint_column_usage AS ccu 
		  ON ccu.constraint_name = tc.constraint_name 
		  AND ccu.table_schema = tc.table_schema 
	WHERE tc.table_schema = 'public' 
	group by tc.table_schema,  
		tc.constraint_name,  
		tc.table_name, 
		tc.constraint_type order by 5 desc; 
	 
-- FK <=> PK 
	SELECT conrelid::regclass AS "FK_Table" 
      ,CASE WHEN pg_get_constraintdef(c.oid) LIKE 'FOREIGN KEY %' THEN substring(pg_get_constraintdef(c.oid), 14, position(')' in pg_get_constraintdef(c.oid))-14) END AS "FK_Column" 
      ,CASE WHEN pg_get_constraintdef(c.oid) LIKE 'FOREIGN KEY %' THEN substring(pg_get_constraintdef(c.oid), position(' REFERENCES ' in pg_get_constraintdef(c.oid))+12, position('(' in substring(pg_get_constraintdef(c.oid), 14))-position(' REFERENCES ' in pg_get_constraintdef(c.oid))+1) END AS "PK_Table" 
	  ,CASE WHEN pg_get_constraintdef(c.oid) LIKE 'FOREIGN KEY %' THEN substring(pg_get_constraintdef(c.oid), position('(' in substring(pg_get_constraintdef(c.oid), 14))+14, position(')' in substring(pg_get_constraintdef(c.oid), position('(' in substring(pg_get_constraintdef(c.oid), 14))+14))-1) END AS "PK_Column" 
	FROM   pg_constraint c 
	JOIN   pg_namespace n ON n.oid = c.connamespace 
	WHERE  contype IN ('f', 'p ') 
	AND pg_get_constraintdef(c.oid) LIKE 'FOREIGN KEY %' 
	ORDER  BY 1, pg_get_constraintdef(c.oid), conrelid::regclass::text, contype DESC; 
 
-- Primary Key 
 SELECT constraint_name, table_name, column_name, ordinal_position
FROM information_schema.key_column_usage
WHERE table_name ilike '%AttributeCollection%';

-- Creating Temp functions 
	drop function if exists pg_temp.test_f1(); 
	create or replace function pg_temp.test_f1(out a int, out b refcursor) 
	returns record as 
	$body$ 
	declare 
	  ref1 refcursor; 
	begin 
 
	b := 'ref1'; 
	open b for (select * from (select 1 as no union select 2 union select 3)A where no > 5);  
	a :=2; 
	return; 
	end; 
	$body$ 
	language 'plpgsql'; 
 
	select * from pg_temp.test_f1(); 
	fetch all in ref1; 
 
	 
-- Getting Table COLUMNS: 
	SELECT p.nspname as schema, c.relname as table, a.attname as column 
	FROM pg_class c, pg_attribute a, pg_type t, pg_namespace p 
	WHERE a.attrelid = c.oid 
	AND a.atttypid = t.oid 
	and c.relnamespace = p.oid 
	AND a.attnum > 0 
	and c.relkind = 'r' 
	and c.relname = 'table_name' 
	and p.nspname = 'schema_name'; 
 
-- Tables Row Count 
	select nspname,  
		   relname,  
		   (xpath('/row/cnt/text()', xml_count))[1]::text::int as row_count 
	from ( 
	  select relname, nspname,  
			 query_to_xml(format('select count(*) as cnt from %I.%I', p.nspname, c.relname), false, true, '') as xml_count 
	  from pg_class c, pg_namespace p 
	  where c.relnamespace = p.oid  
	  and c.relkind = 'r' 
	  and p.nspname = 'schema_name' --<< change here for the schema you want 
	) t order by 3 desc; 
 
 -- Column Level Count
 select table_name,  
           column_name,                     
           (xpath('/row/cnt/text()', xml_count))[1]::text::int as row_count 
from ( 
  select table_name, column_name,  
                 query_to_xml(format('select count(%I) as cnt from %I.%I', column_name, table_schema, table_name), false, true, '') as xml_count 
  from information_schema.columns 
  where table_name='property' 
  and table_schema='public' limit 5
) t order by 3 desc; 

 
-- Column String 
	SELECT string_agg(a.attname, ', ') as column_string 
	FROM pg_class c, pg_attribute a, pg_type t, pg_namespace p 
	WHERE a.attrelid = c.oid 
	AND a.atttypid = t.oid 
	and c.relnamespace = p.oid 
	AND a.attnum > 0 
	and c.relkind = 'r' 
	and c.relname = 'table_name' 
	and p.nspname = 'schema_name'; 
 
-- Queries on Indexes 
SELECT
    indexname,
    replace(indexdef, 'CREATE INDEX', 'CREATE INDEX IF NOT EXISTS')
FROM
    pg_indexes
WHERE
    tablename ilike any(array['fp', 'floorplanparameter', 'unitratematrix', 'expadvstats'])
	
	
	select 
		p.nspname as schema_name, 
		t.relname as table_name, 
		i.relname as index_name, 
		string_agg(a.attname , ', ' order by a.attname) as column_name 
	from 
		pg_class t, 
		pg_class i, 
		pg_index ix, 
		pg_attribute a, 
		pg_namespace p 
	where 
		t.oid = ix.indrelid 
		and i.oid = ix.indexrelid 
		and a.attrelid = t.oid 
		and t.relnamespace = p.oid 
		and a.attnum = ANY(ix.indkey) 
		and t.relkind = 'r' 
		and p.nspname = 'schema_name' 
		and  replace(t.relname, '_details', '') ilike any(array['emp', 'dept']) 
	 and not exists (select 1 from 
						information_schema.table_constraints 
						where table_schema =  p.nspname 
						and table_name = t.relname 
						and constraint_name = i.relname) 
	group by schema_name, table_name, index_name; 
 
	 
-- Deleting Duplicate rows 
	delete FROM public.emp a  
	using ( 
      SELECT MIN(ctid) as ctid, * 
        FROM public.emp 
        GROUP BY emp_id, ename 
	HAVING COUNT(*) > 1 
      ) b 
      WHERE a.emp_id = b.emp_id 
      and a.ename = b.ename       
      AND a.ctid <> b.ctid; 
       
      select string_agg('and a.'||column_name||' = b.'||column_name, ' 
                        ') from information_schema.columns where table_schema||'.'||table_name ilike 'public.emp'; 
                         
     select string_agg(column_name, ', ') from information_schema.columns where table_schema||'.'||table_name ilike 'public.emp'; 
	  
-- Active Tables 
	SELECT schemaname, relname  
	FROM pg_stat_all_tables  
	where schemaname not ilike 'pg_toast%' 
	and schemaname not ilike 'pg_temp%'  
	and schemaname not in ('information_schema', 'pg_catalog') 
	and COALESCE(seq_scan, 0) + COALESCE(idx_scan, 0)  + COALESCE(n_tup_del, 0) + COALESCE(n_tup_hot_upd, 0) + COALESCE(n_tup_ins, 0) + COALESCE(n_tup_upd, 0)  > 0  
	order by 1, 2; 
 
	 
-- Finding List of Tables in Functions 
	select  
		   (xpath('/row/data/text()', tbl))[1]::text as table 
	from ( 
	  select relname, nspname, 
	  query_to_xml(format('select data from 
	(select distinct trim(e''\t\n\r\ ''  
	 from unnest(string_to_array((select pg_get_functiondef(pr.oid) 
								  FROM pg_proc pr JOIN pg_namespace nsp  
								  ON nsp.oid=pr.pronamespace 
								  WHERE proisagg = FALSE  
								  AND nspname||''.''||pr.proname = %L), '' '') 
				 )) as data 
	)A 
	where data ~ ''.''  
	and trim(data)='||quote_literal(p.nspname||'.'||c.relname), 'public.get_emp_details' ), false, true, '') as tbl 
	  from pg_class c, pg_namespace p 
	  where c.relnamespace = p.oid  
	  and c.relkind = 'r' 
	  and p.nspname not ilike 'pg_toast%' 
	  and p.nspname not ilike 'pg_temp%'  
	  and p.nspname not in ('information_schema', 'pg_catalog') 
	  and p.nspname='public' 
	) t where tbl::text<>'' order by 1; 
 
	 
-- Comparing SPs b/w Databases 
 
	select B.*, diff from 
	(select B.*, '9.6V |<---->| 10.4V', A.nspname, A.spname, A.param, A.def, B.sp_diff = A.def as diff 
	from  
	(select  
	 nsp.nspname, pr.proname as spname, pg_catalog.pg_get_function_identity_arguments(pr.oid) as param, replace(replace(replace(replace(pg_get_functiondef(pr.oid),'NUMERIC(10, 0)','integer'),'NUMERIC(20, 0)','bigint'),'NUMERIC(5, 0)','smallint'),'NUMERIC(1, 0)','bit') as def 
	FROM pg_proc pr JOIN pg_namespace nsp  
	  ON nsp.oid=pr.pronamespace  
	  WHERE proisagg = FALSE  
	  AND nspname = 'public' 
	  and (nsp.nspname, pr.proname, pg_catalog.pg_get_function_identity_arguments(pr.oid)) 
	in (select schema, spname, params from tmp_prod_sps))A 
	right outer join 
	(select * from  dblink('dbname=testdb host=localhost port=5432 user=user1 password=userpwd' 
	,'select nsp.nspname, pr.proname as spname, replace(replace(replace(replace(pg_get_functiondef(pr.oid),''NUMERIC(10, 0)'',''integer''),''NUMERIC(20, 0)'',''bigint''),''NUMERIC(5, 0)'',''smallint''),''NUMERIC(1, 0)'',''bit'') as def, 
	pg_catalog.pg_get_function_identity_arguments(pr.oid) as params 
	FROM pg_proc pr JOIN pg_namespace nsp  
	ON nsp.oid=pr.pronamespace  
	WHERE proisagg = FALSE  
	AND nspname = ''public''') AS t(schema_nm text, sp_nm text, sp_diff text, sp_params text))B 
	on B.schema_nm = A.nspname and B.sp_nm = A.spname and B.sp_params = A.param)A right join tmp_prod_sps B on B.schema = A.schema_nm and B.spname = A.sp_nm and B.params = A.sp_params order by 1, 2, 3;, schema, spname; 
 
-- Performance Parameters
select * from pg_settings where (name ilike 'enable_%' or name in ('shared_buffers', 'wal_buffers', 'effective_cache_size', 'work_mem', 'maintenance_work_mem', 'synchronous_commit', 'checkpoint_timeout', 'checkpoint_completion_target', 'max_connections', 'max_fsm_pages', 'fsync', 'commit_delay', 'random_page_cost')) order by 1;

-----------------
WindowAgg (cost=69547.50..79494.14 rows=497332 width=40) (actual time=107.619..152.457 rows=39160)
  Buffers: shared hit=3916, temp read=3807 written=3816
  -> Sort (cost=69547.50..70790.83 rows=497332 width=36) (actual time=107.607..127.485 rows=39160)
    Sort Key: blob, id
    Sort Method: external merge  Disk: 30456kB
    Buffers: shared hit=3916, temp read=3807 written=3816
    -> Seq Scan on dumps (cost=0..8889.32 rows=497332 width=36) (actual time=0.022..8.747 rows=39160)
      Buffers: shared hit=3916

Execution time: 159.960 ms

SQL> select avg(pg_column_size(blob)) from dumps;

   avg
----------
   780
   

SQL> select avg(pg_column_size(md5(array_to_string(blob, '')))) from dumps;

    avg
-----------
    36
	
SQL> SELECT
      id,
      MIN(id) OVER (
            PARTITION BY md5(array_to_string(blob, '')
      ) ORDER BY id)
FROM
      dumps;

WindowAgg (cost=7490.74..8469.74 rows=39160 width=40) (actual time=349.394..371.771 rows=39160)
  Buffers: shared hit=3916
  -> Sort (cost=7490.74..7588.64 rows=39160 width=36) (actual time=349.383..353.045 rows=39160)
    Sort Key: (md5(array_to_string(blob, ''::text))), id
    Sort Method: quicksort  Memory: 4005kB
    Buffers: shared hit=3916
    -> Seq Scan on dumps (cost=0..4503.40 rows=39160 width=36) (actual time=0.055..292.070 rows=39160)
      Buffers: shared hit=3916

Execution time: 374.125 ms

------

select pg_column_size( md5('foo') ) as md5_size, pg_column_size( digest('foo', 'md5') ) as crypto_md5_size, pg_column_size( uuid_in(md5('foo')::cstring) ) as uuid_size;

-------------

select sun, mon, tue, wed, thu, fri, sat 
from crosstab('select NTILE(4) over() as id, to_char(dt::Date, ''Dy'') as dy, row_number() over() as val
			   from generate_series(''2019-12-01''::date, ''2019-12-30''::date, ''1 day''::interval) as dt order by dt::Date, to_char(dt::Date, ''ww''), 3',
				'select dy from unnest(array[''Sun'', ''Mon'', ''Tue'', ''Wed'', ''Thu'', ''Fri'', ''Sat''])as dy')
as t(no text, Sun text, Mon text, Tue text, Wed text, Thu text, Fri text, Sat text)

-- Table--Trigger--Fuction
--1
	WITH tf AS (
	SELECT tgfoid -- Get the function OID
	FROM pg_catalog.pg_trigger
	--WHERE tgname = 'rows_modified' -- The name of the trigger
	--AND tgrelid = 'public.books'::regclass -- On this table
	) -- Find all tables using the same function in a trigger
	SELECT n.nspname || '.' || c.relname AS table_name,
	t.tgname AS trigger_name,
	p.proname AS func_name
	FROM pg_catalog.pg_namespace n,
	pg_catalog.pg_class c,
	pg_catalog.pg_trigger t,
	pg_catalog.pg_proc p,
	tf
	WHERE t.tgfoid = tf.tgfoid
	AND n.oid = c.relnamespace
	AND t.tgrelid = c.oid
	AND p.oid = tf.tgfoid;

--2
	
	SELECT trigger_name,
	event_object_schema AS schemaname,
	event_object_table AS tablename,
	action_timing AS timing,
	event_manipulation AS events,
	replace(action_statement, 'EXECUTE PROCEDURE ','') AS function
	FROM information_schema.triggers
	ORDER BY action_timing DESC,
	trigger_name ;

-- Trigger Definition

 SELECT pg_catalog.pg_get_functiondef((SELECT tgfoid
FROM pg_catalog.pg_trigger
WHERE tgname = ’price_changed’));

--- FOREIGN DATA WRAPPERS

CREATE EXTENSION postgres_fdw;
CREATE SERVER dbremote FOREIGN DATA WRAPPER postgres_fdw
OPTIONS (host ’localhost’, dbname ’dbremote’, port ’5432’);

CREATE USER MAPPING FOR charles SERVER dbremote
OPTIONS (user ’remoteuser’, password ’...’);

CREATE FOREIGN TABLE public.books_history_remote (
book_id BIGINT,
author TEXT,
title TEXT,
currency TEXT,
price NUMERIC(6,2),
last_modified TIMESTAMPTZ,
visible BOOLEAN,
change_op TEXT,
change_user TEXT,
change_ts TIMESTAMPTZ
)
SERVER dbremote
OPTIONS (
schema_name ’public’,
table_name ’books_history’,
updatable ’true’
);

-- DBLINK
select string_agg(/*query_to_xml(*/format('select '||quote_literal(node)||' as node, * from dblink ('||quote_literal('%s')||', '||quote_literal('select COUNT(amenityname) as Total_Amenities ,
count(significance) filter(WHERE (significance >= 0.95
              AND AverageDaysOnMarketWithAmenities >
                AverageDaysOnMarketWithoutAmenity)) as Recommendations,
round(avg(analyzedleases),0) as analyzedleases,
round(avg(totalavailableleases-analyzedleases),0) as excluded_leases,
round(((SUM(AverageAmenityValue * TotalUnitCountWithAmenities))::FLOAT8 /
NULLIF(SUM(TotalUnitCountWithAmenities), 0)),0) AS AverageAmenityValue,
count(amenitiespricedatzero) filter(where amenitiespricedatzero>0) as Pricedatzero
from PropertyAmenityHypothesis 
where propertyid in (226947,227076,209071,152624) and datageneratedperiod=''Y2019M12''  group by analyzedleases;')||') as tb
(Total_Amenities bigint,
 Recommendations bigint,
 analyzedleases bigint,
 excluded_leases bigint,
 AverageAmenityValue bigint, 
 Pricedatzero int
 )', host)/*,  false, true, '')*/, '
						  union all
				  ')  as data  from (values ('Node 1', 'host=rcsyaodbpgr002.Realpage.com port=5432 user=rms dbname=cds2'), ('Node 2', 'host=rcsyaodbpgr003.Realpage.com port=5432 user=rms dbname=cds2'), ('Node 3', 'host=rcayaodbacs003.realpage.com port=5432 user=rms dbname=cds2'), ('Node 4','host=rcdylsdbacs004.realpage.com port=5432 user=rms dbname=cds2'), ('Node 5', 'host=rcdylsdbacs005.realpage.com port=5432 user=rms dbname=cds2')) as tb(node, host)
				  

--  TEMPORARY FUNCTION

DROP FUNCTION IF EXISTS pg_temp.get_property_node(bigint[], varchar);
CREATE OR REPLACE FUNCTION pg_temp.get_property_node(vin_propertyids bigint[], vin_timeperiod varchar)
returns table(node_name text, property_id bigint) as
$body$
DECLARE
i record;
v_query text;
BEGIN
  SELECT string_agg(format('SELECT '||quote_literal('%s')||' As node, * 
                            FROM dblink ('||quote_literal('%s')||', '||
    quote_literal('SELECT distinct propertyid FROM PropertyAmenityHypothesis 
                   WHERE propertyid = any ('||quote_literal(vin_propertyids)||') 
                   AND datageneratedperiod='||quote_literal(vin_timeperiod))||'
                 ) As tb(propertyid bigint)'
                 , 'Node '||nodeid+1, connectionstring), '
    UNION ALL
    ')  into v_query  FROM CDS2Node WHERE country ilike 'us' 
    AND environment ilike 'sat';
                  
/*FOR i IN  execute v_query LOOP
    return next i;
  END LOOP;
  return;*/
  return query execute v_query;
END;
$body$
LANGUAGE 'plpgsql';

select d.*, p.propertyname from pg_temp.get_property_node(
  vin_propertyids := (select string_to_array(string_agg(propertyid::varchar, ',' ), ',') 
					  from(select propertyid from property)a
					 )::bigint[], 
  vin_timeperiod := 'Y2019M12'::Varchar 
  )d  join property p on d.property_id=p.propertyid order by 2;
  
-- JSON ARRAY
select each_section ->> 'propertyName' as propertyname,
each_attribute ->> 'recommend' as recommendation,
count(*)
from tb
cross join json_array_elements(data) each_section
cross join json_array_elements(each_section -> 'amenityData') each_attribute
where each_attribute ->> 'recommend' is not null
 and each_section ->> 'propertyId' = '227019'
 group by 1,2 ;
 
-- Replication failover

SELECT pid, usename, application_name, state , pg_current_wal_lsn() AS current_lsn , sent_lsn , pg_size_pretty(pg_wal_lsn_diff(pg_current_wal_lsn(), sent_lsn)) AS sent_diff , write_lsn , pg_size_pretty(pg_wal_lsn_diff(pg_current_wal_lsn(), write_lsn)) AS write_diff , replay_lsn , pg_size_pretty(pg_wal_lsn_diff(pg_current_wal_lsn(), replay_lsn)) AS replay_diff , write_lag, flush_lag, replay_lag FROM pg_stat_replication ORDER BY application_name, pid;

-- Regular Expressions

select string_agg(split_word, ',') from
(select substr('717SA', pos, coalesce(lead(pos, 1) over (), length('717SA')+1)-pos) as split_word from
(select '' as w, 1 as pos union all (select j, strpos('717SA', j) FROM regexp_split_to_table('717SA', E'') j WHERE ascii(j) BETWEEN 65 AND 90 and strpos('717SA', j)<>1 order by 2))A)A;

-- Replacing // values
(Text, E'[\\"]',E'\\\&','g'))

--
 select i, rank() over(order by i), dense_rank() over(order by i), lead(i, 1) over(), lag(i, 1) over(), first_value(i) over(), last_value(i) over() from unnest(array[1,2,3,3,4,5,6,6,7,8,9])i
 
 
 
 -------------
 [‎3/‎27/‎2020 10:09 PM]  Merlin Moncure:  
No Title 
 778  27/03/20 11:21:03 pg_dump  amenity_analytics | psql amenity_analytics_2020_03_27
  779  27/03/20 11:21:05 psql
  780  27/03/20 11:21:43 vi /tmp/backup.sh
  781  27/03/20 11:21:56 nohup bash /tmp/backup.sh &
  782  27/03/20 11:22:00 tail -f nohup.out
  783  27/03/20 11:22:27 ps asx
  784  27/03/20 11:22:30 ps qaxf
  785  27/03/20 11:22:32 ps axf
  786  27/03/20 11:22:36 ps axf | less
  787  27/03/20 11:22:58  klll pgr002 ~]$ nohup bash /tmp/backup.sh &
  788  27/03/20 11:23:12 kill 22280
  789  27/03/20 11:23:21 tail nohup.out
  790  27/03/20 11:23:24 psql
  791  27/03/20 11:23:33 cd /tmp
  792  27/03/20 11:23:40 nohup bash /tmp/backup.sh &
  793  27/03/20 11:23:47 tail -f nohup.out
  794  27/03/20 11:24:01 ps -axf | grep backup
  795  27/03/20 11:24:20 tail nohup.out
  796  27/03/20 11:39:34 history 
 
-- Renaming the database
select pg_terminate_backend(pid) from pg_stat_activity where datname = 'testdb';
ALTER DATABASE Existing_DB_Name RENAME TO New_DB_Name;

--
select regexp_split_to_table( eno||' ' ||(ename||','||sal), '\s+') from
(values (1, 'Sukesh', 50000),
         (2, 'Ramanna', 40000),
         (3, 'Arvind', 30000)
) as r(eno, ename, sal);
Expected Output:
1
Sueksh, 50000
2,
Ramanna, 40000

-- Regular Expressions

CREATE DOMAIN color_code AS text
  CHECK (VALUE ~ '^#?([a-f]|[A-F]|[0-9]){3}(([a-f]|[A-F]|[0-9]){3})?$');
  
CREATE DOMAIN alphanumeric_string AS text
CHECK (VALUE ~ '[a-z0-9].*');

-- password: Should have 1 lowercase letter, 1 uppercase letter, 1 number,
-- 1 special character and be at least 8 characters long
CREATE DOMAIN password_text AS text
CHECK (VALUE ~ '(?=(.*[0-9]))(?=.*[\!@#$%^&*()\\[\]{}\-_+=~`|:;"''<>,./?])(?=.*[a-z])(?=(.*[A-Z]))(?=(.*)).{8,}');

CREATE DOMAIN url AS text
CHECK (VALUE ~ 'https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#()?&//=]*)');
 
COMMENT ON DOMAIN url IS 'match URLs (http or https)';

-- domains
CREATE DOMAIN domain AS text
CHECK (VALUE ~ '^([a-z][a-z0-9-]+(\.|-*\.))+[a-z]{2,6}$');
 
COMMENT ON DOMAIN domain IS 'match a domain name. www in front is not allowed';

-- PG DashBoard
SELECT
    pid AS "PID",
    datname AS "Database",
    usename AS "User",
    application_name AS "Application",
    client_addr AS "Client",
    to_char(backend_start, 'YYYY-MM-DD HH24:MI:SS IST') AS "Backend Start",
    state AS "State",
    wait_event_type || ': ' || wait_event AS "Wait Event",
    pg_blocking_pids(pid) AS "Blocking PIDs",
    query AS "Query",
    to_char(state_change, 'YYYY-MM-DD HH24:MI:SS TZ') AS "State Change",
    to_char(query_start, 'YYYY-MM-DD HH24:MI:SS TZ') AS "Query Start"
FROM
    pg_stat_activity
WHERE
  state = 'active'
 AND datname <> 'postgres'
 ORDER BY state, usename;

-- Roles and Permissions

 select * from  information_schema.role_table_grants where table_name = 'tablename'
 

-- Table Definition
CREATE OR REPLACE FUNCTION get_function_def(v_tablenamewithschema anyarray)
RETURNS TEXT AS
$$
SELECT 
 string_agg(fn_def, E'\n\n')
FROM
(
SELECT 
    'CREATE '||
    CASE
        WHEN RelPersistence = 'p'
        THEN ''
        WHEN RelPersistence = 'u'
        THEN 'UNLOGGED'
        WHEN RelPersistence = 't'
        THEN 'TEMP'
    END||' TABLE '||INITCAP(TABLE_NAME)||E' \n(\n'||string_agg(concat(INITCAP(COLUMN_NAME)||'    ' || 
    CASE
        WHEN data_type ILIKE 'DOUBLE PRECISION'
        THEN 'FLOAT8'
        WHEN data_type ILIKE 'USER-DEFINED'
        THEN upper(udt_name)
        ELSE UPPER(Data_Type) 
    END), E',\n')||E'\n);' AS fn_def
FROM pg_class pc
JOIN pg_namespace nsp 
ON nsp.oid=pc.relnamespace
JOIN information_schema.columns isc 
ON nsp.nspname = table_schema 
 AND isc.table_name = pc.relname
WHERE table_schema||'.'||TABLE_NAME ILIKE ANY ($1)
GROUP BY TABLE_NAME, RelPersistence
)A;
$$ Language SQL;

-----------

Important things to consider when choosing Replication setups between Postgres and MySQL
1. Postgres Replication- No Automatic Failover to secondary (either use pg_ctl promote or need to have the TRIGGER file). EDB ADVANCED SERVER Has FAILOVER MANAGER to do automatic failover, whereas MYSQL GROUP REPLICATION in InnoDB Cluster using MYSQL ROUTER 8.0 provides automatic failover. MySQL Group Replication is very similar to MSSQL Always ON AG.
Note:- In AWS RDS (Postgres) when you have multi-AZ, The replication is Volume Based Snapshot replication and auto failover happens.
2. Postgres does not provide Synchronous Multi-master Replication, whereas MySQL Provides Multi-master Replication using both NDB Cluster (Synchronous within NDB Cluster) and InnoDB Cluster Group replication (async multi-master). In multi-primary mode set group_replication_single_primary_mode=OFF
Note:- You can use Bucardo to get async multi-master in PG.
3. Routing and Load Balancing challenge in PG but MYSQL InnoDB Cluster Uses MySQL Router which is bootstrapped against the InnoDB Cluster using MySQL Shell Admin API and manual Configuration for routing and Load balancing not required. Group Replication uses GCS to detect failover, membership and transaction ordering.

* cronjob
 cd /home/rms/crontab -l
-- queue at 9PM CST EveryDay
0 21 * * * psql -c"SELECT queueCdsRun()" ysanalysis 2>&1 > /home/rms/logs/queueCdsRun.log

-- Databse Rename
you have to kill all connections but yours
1. connect to postgres databsae
2. select pg_terminate_backend(pid) from pg_stat_activity where datname = 'amenity_analytics'
3. alter ..

**Restore and Backup:
-----------------------
1. Copy the latest backup copy from backup location
	scp -r rpothireddy@rcdylsapcvs001:/backups/yieldstar_daily_backup/mpfagg/castaging_01.pg_dump /home/rms/
	scp -r rms@localhost:/home/rms/backups/castaging.pg_dump /home/rms/

2. Create temp database testdb.
	CREATE DATABASE testdb;

3. Restore testdb database with prod backup
	nohup pg_restore -F d -h rcqylsdbpgr101 -U rms -d testdb castaging_29.pg_dump >>/home/rms/castaging_restore.log 2>&1 &

	--table only
	nohup pg_restore -F d -h rcdyaodbpgr105.realpage.com -U rms --schema=public --table=tblrentdetails -d temp1 castaging_02.pg_dump >>/home/rms/castaging_restore.log 2>&1 &

4. Run below steps in testdb.
	ALTER SERVER mpf2 OPTIONS ( SET host 'rcdylsdbpgr005');
	ALTER SERVER mpf2 OPTIONS (SET dbname 'da_sat');
	ALTER SERVER mpf2 OPTIONS (SET port '5411');


	ALTER SERVER mpf2 OPTIONS ( SET host 'localhost');
	ALTER SERVER mpf2 OPTIONS (SET dbname 'da');
	ALTER SERVER mpf2 OPTIONS (SET port '5432');

	ALTER SERVER da OPTIONS ( SET host 'localhost');
	ALTER SERVER da OPTIONS (SET dbname 'da');

refresh materialized view geographylookup;
refresh materialized view vw_CoreLogicAndRCATransactions;

scp -r rpothireddy@rcdylsapcvs001:/backups/yieldstar_daily_backup/mpfagg/mpf_analysis_22.pg_dump /var/lib/pgsql
nohup pg_restore -F d -h rcdylsdbpgr005 -U rms da_dev mpf_analysis_19.pg_dump >>/home/rms/da_restore.log 2>&1 &

scp -r rpothireddy@rcdylsapcvs001:/backups/yieldstar_daily_backup/mpfagg/mpf_analysis_22.pg_dump /var/lib/pgsql/
nohup psql -q -U postgres -c"CALL Main()" pgtask_prod >> /home/rms/logs/pgtask_prod.log 2>&1 &

nohup /home/rms/bin/mpf_sync_ssot.sh > /home/rms/logs/mpf_sync_ssot.log 2>&1 &

SELECT
    'truncate table '||nspname||'.'||relname||';' AS "relation",
    pg_size_pretty (
        pg_total_relation_size (C .oid)
    ) AS "total_size"
FROM
    pg_class C
LEFT JOIN pg_namespace N ON (N.oid = C .relnamespace)
WHERE
    nspname NOT IN (
        'pg_catalog',
        'information_schema'
    )
AND C .relkind <> 'i'
AND nspname !~ '^pg_toast'
ORDER BY
    pg_total_relation_size (C .oid) DESC
LIMIT 100;



UPDATE Servicecontrol SET Environment = 'SAT';
truncate mpfuser;
insert into mpfuser
  SELECT (c::mpfuser).* FROM dblink
  (
    'host=locahost dbname=testdb port=5432',
    $$
      SELECT c::TEXT FROM mpfuser c
    $$
  ) AS R(c TEXT);


ALTER SERVER mpf2 OPTIONS ( SET host 'localhost');
ALTER SERVER mpf2 OPTIONS (SET dbname 'da');


ALTER SERVER testdb OPTIONS ( SET host 'localhost');
DROP SERVER IF EXISTS DA CASCADE;
CREATE SCHEMA IF NOT EXISTS da_fdw;
  CREATE SERVER da
      FOREIGN DATA WRAPPER postgres_fdw
      OPTIONS (host 'localhost', dbname 'testdb', port '5411');
############*******da database**********###############

CREATE OR REPLACE FUNCTION CAStagingConn() RETURNS TEXT AS
$$
  SELECT
    'host=localhost dbname=testdb port=5432'::TEXT;
$$ LANGUAGE SQL;



SELECT
    nspname,relname,    pg_size_pretty (
        pg_total_relation_size (C .oid)
    ) AS "total_size"
FROM
    pg_class C
LEFT JOIN pg_namespace N ON (N.oid = C .relnamespace)
WHERE
    nspname NOT IN (
        'pg_catalog',
        'information_schema'
    )
AND C .relkind <> 'i'
AND nspname !~ '^pg_toast'
ORDER BY
    pg_total_relation_size (C .oid) DESC
LIMIT 100;

nohup pg_restore -F d -h localhost -U rms -d testdb /var/lib/pgsql/testdb_29.pg_dump >>/home/rms/testdb_restore.log 2>&1 &

nohup pg_restore -x ysconfig-16.pgdump|psql ysconfig >>/home/rms/ysconfig_restore.log 2>&1 &

pg_restore -F d -U rms --table=companypropertyattributeproperty -d test -x ysconfig-31.pgdump

pg_restore  --table=companypropertyattributeproperty  -x ysconfig-31.pgdump|psql test


dbs="$( echo "SELECT datname FROM pg_database;" | psql -U rms -d postgres| tail -n +3 | head -n -2 | egrep -v 'template0|template1|postgres|polog|poconfig|poconfig_qa|yieldstar|expectedexposureservice|ystraining|SAT001' )"
for database in $dbs; do
printf "%s: %s\n" "$database" "$(echo "CREATE
OR REPLACE FUNCTION getData(propertyId bigint) 
RETURNS void 
AS 
'
BEGIN
DELETE FROM
  propertycomment p2
WHERE
  propcode = propertyId
  AND added <= current_timestamp - interval ''3 months'';
end;
' language plpgsql;" | psql -d "${database}" -U rms )"
done

** Server Query Run:
 nohup psql -h localhost -d testdb -U rms -c "select * from fn_daily();" > /exports/rgunde/fn_log.log 2>&1 &
 
 -- Query File EDIT and RUN in PSQL
 \r\e then :wq!

-- set pager
\pset pager

\set G '\\set QUIET 1\\x\\g\\x\\set QUIET 0'
\pset format wrappe
export PATH=/usr/pgsql-9.6/bin:$PATH
yum install pspg

-- Esitmatied Time
_StartTime := clock_timestamp();
 PERFORM LogIt(format(
      'ProcessAmenitiesPropertyLoop For %s - %s (%s of %s) %s%% done Est Time %s',
      r.PropertyId,
      _AnalysisPeriod,
      i,
      _Count,
      round(i / _Count::FLOAT8 * 100, 1),
      ((clock_timestamp() - _StartTime) * _Count  / i)::INTERVAL(1)));
  ....
   i := i + 1;
   

-- DB Logs
/var/lib/pgsql/9.6/data/pg_log

-- DB serverup
[‎4/‎15/‎2020 6:34 PM]  Merlin Moncure:  
 /usr/pgsql-11/bin/pg_ctl start -D /var/lib/pgsql/11/data 
 /usr/pgsql-11/bin/pg_ctl start
 
-----------------------****************---------------------- 
 sudo su - postgres
 cd /var/lib/pgsql 
 /usr/pgsql-9.6/bin/pg_ctl start
 
 /usr/pgsql-12/bin/pg_ctl stop

 /usr/pgsql-9.6/bin/pg_ctl start -D /var/lib/pgsql/9.6/data 
 
 --PropertyDetailsData
select each_section ->> 'propertyId' as propertyId,
each_section ->> 'propertyName' as propertyName,
each_attribute ->> 'amenityName' as amenityName,
each_attribute ->> 'mktLeases' as mktLeases,
each_attribute ->> 'mktValue' as mktValue,
each_attribute ->> 'mktDOM' as mktDOM
--select each_attribute
from (select  jsonresult -> 'propertyDetails' as jsonresult from amenitypropertydetailsdata(_reportid := 2351::bigint))a
cross join json_array_elements(jsonresult) each_section
cross join json_array_elements(each_section -> 'amenityData') each_attribute
--UTC
--EXCEPTION
EXCEPTION WHEN OTHERS THEN
    GET STACKED DIAGNOSTICS
        v_sqlstate = returned_sqlstate,
        v_message = message_text,
        v_context = pg_exception_context;

-- JSON UPDATE
WITH data AS
(
 SELECT 
 Arguments,
 Payload::jsonb AS j
 FROM JSONResponseCache
  WHERE JSONCall = 'AmenityPropertyDetailsAutoGen'
    AND array_to_string(Arguments, ',')::bigint in (select analysisid from ca.analysis where added::date = '2021-03-08'::DAte and login = 'autogenerated')
),
final as (
select Arguments, jsonb_pretty(jsonb_set(
 j,
 '{analysisPeriod}', 
 '"4 Months (November 08, 2020 - March 07, 2021)"')) as fjson
from data
)
update JSONResponseCache  j
set Payload = fjson::jsonb
from final f
where j.Arguments = f.Arguments

-- dbsize
SELECT pg_database.datname, pg_size_pretty(pg_database_size(pg_database.datname)) AS size FROM pg_database ORDER BY pg_database_size(pg_database.datname) desc;

-- Table/Index is consuming the most space
SELECT
  nspname || '.' || relname AS "relation", pg_size_pretty(pg_relation_size(C.oid)) AS "size"
FROM pg_class C
LEFT JOIN pg_namespace N ON (N.oid = C.relnamespace)
WHERE nspname NOT IN ('pg_catalog', 'information_schema')
ORDER BY pg_relation_size(C.oid) DESC
LIMIT 20;

/*
 Many Times There are Not much records in the Table But due to dead tuples size of table/index may increase , So to check which table has highest dead tuples following the the query 
*/
SELECT schemaname,relname,n_live_tup,n_dead_tup,last_vacuum,last_autovacuum FROM pg_stat_user_tables ORDER BY n_dead_tup DESC limit 10;

-- Indexes Types
* B-Tree -> Most Popular
* Hash -> Useful for exact matches
* BRIN (Block Range Index) -> Useful for huge tables
* GIN (Generalized Inverted Index) -> Great for many duplicate keys, e.g. Full Text Search, JSON, Arrays
* GiST ( Generalized Search Tree) -> Great for geographical and range types
* SP-GiST (Space Partitioned GiST) -> Great for many duplicate prfixes

-- Extensions
* Foreign Data Wrappers -> connect to other data sources, e.g. SQL Server, Oracle, MySQL etc..
* pl/V8 JavaScript Engine
* pg_trgm (fuzzy searching)
* pg_cron (scheduling)
* tablefunc (pivot tables with crosstab)
* hstore, citext

-- Procedural Languages
   Write USFs and Procs in language that your team knows best.
* Built-In
  * pl/pgSQL
  * pl/Tcl
  * pl/Perl
  * pl/Python
  
* Availabel Extensions
 * pl/V8(JavaScript)
 * pl/Java
 * pl/R
 * pl/PHP
 * pl/Ruby
 * pl/sh

-- ConnectionsWhen a connection from an application is connected to a database via pgpool, there are 4 types of connection conditions,

1.  active : This indicates that the connection is good.
2.  idle : This indicates that the connection is idle, and we should track this connection based on the period of time it has been idle.
3.  idle in transaction : This indicates that it is in a transaction but is currently not doing anything and may be waiting for input from the user such as the transaction “begin”
4.  idle in transaction (aborted) : This situation is the same as  idle in transaction , unless one of the statements in the transaction has caused an error. This should also be noted based on the length of time it has been idle.

Remember, in this case, the active state connection  is important because the connection is running and using resources that cause an increase in the average load.



--- Hidden COLUMNS
SELECT attname, format_type (atttypid, atttypmod)
FROM pg_attribute
WHERE attrelid::regclass::text='scott.employee'
ORDER BY attnum;

---- AUTO VACUUM
WITH vac AS (
    WITH vbt AS (
        SELECT
            setting AS autovacuum_vacuum_threshold
        FROM pg_settings
        WHERE name = 'autovacuum_vacuum_threshold'),
        vsf AS (
            SELECT
                setting AS autovacuum_vacuum_scale_factor
            FROM pg_settings
            WHERE name = 'autovacuum_vacuum_scale_factor'),
            fma AS (
                SELECT
                    setting AS autovacuum_freeze_max_age
                FROM pg_settings
                WHERE name = 'autovacuum_freeze_max_age'),
                sto AS 
                (
                    SELECT
                        opt_oid,
                        split_part(setting, '=', 1) AS param,
	                    split_part(setting, '=', 2) AS value
	                FROM (
	                    SELECT
	                        oid opt_oid,
	                        unnest(reloptions) setting
	                    FROM pg_class) opt
				)
                SELECT
                    'VACUUM VERBOSE ANALYZE ' || ns.nspname || '.' || c.relname || ';' AS cmd
                FROM
                    pg_class c
                    JOIN pg_namespace ns ON ns.oid = c.relnamespace
                    JOIN pg_stat_all_tables stat ON stat.relid = c.oid
                    JOIN vbt ON (1 = 1)
                    JOIN vsf ON (1 = 1)
                    JOIN fma ON (1 = 1)
                    LEFT JOIN sto cvbt ON cvbt.param = 'autovacuum_vacuum_threshold'
	                    AND c.oid = cvbt.opt_oid
	                LEFT JOIN sto cvsf ON cvsf.param = 'autovacuum_vacuum_scale_factor'
	                    AND c.oid = cvsf.opt_oid
	           		LEFT JOIN sto cfma ON cfma.param = 'autovacuum_freeze_max_age'
	                   AND c.oid = cfma.opt_oid
        WHERE
            c.relkind = 'r'
            AND nspname <> 'pg_catalog'
            AND ns.nspname NOT LIKE 'data_archive'
            AND (stat.n_dead_tup > 0
                OR stat.n_mod_since_analyze > 0)
            AND (age(relfrozenxid) >= coalesce(cfma.value::float, autovacuum_freeze_max_age::float)
                OR coalesce(cvbt.value::float, autovacuum_vacuum_threshold::float) + 500 /*$ {VACUUM_THRESHOLD}*/ + coalesce(cvsf.value::float, autovacuum_vacuum_scale_factor::float) * c.reltuples <= n_dead_tup)
        ORDER BY
            age(relfrozenxid) DESC
),
ana AS (
    SELECT
        'VACUUM VERBOSE ANALYZE ' || ns.nspname || '.' || c.relname || ';' AS cmd
    FROM
        pg_class c
        JOIN pg_namespace ns ON ns.oid = c.relnamespace
        JOIN pg_stat_all_tables stat ON stat.relid = c.oid
    WHERE
        c.relkind = 'r'
        AND nspname <> 'pg_catalog'
        AND ns.nspname NOT LIKE 'data_archive'
        AND (current_setting('autovacuum_analyze_threshold')::float + 750 /*$ {ANALYZE_THRESHOLD} */ + current_setting('autovacuum_analyze_scale_factor')::float * c.reltuples) <= n_mod_since_analyze
    ORDER BY
        n_mod_since_analyze DESC
    LIMIT 500
)
SELECT DISTINCT *
FROM vac
UNION
SELECT * FROM ana ORDER BY 1 DESC;