set echo on
CREATE OR REPLACE PROCEDURE "ZRUS_ALL_OBJEKTY_SCHEMATU" AS
v_pom PLS_INTEGER;
BEGIN
LOOP
FOR irec IN (SELECT DISTINCT
object_type,object_name,
'drop '||object_type||' "'||object_name||'"'||
CASE object_type WHEN 'TABLE' THEN ' cascade constraints purge'
ELSE ' '
END AS prikaz
FROM user_objects
WHERE object_name 'ZRUS_ALL_OBJEKTY_SCHEMATU'
)
LOOP
BEGIN
DBMS_OUTPUT.put_line('prikaz '||irec.prikaz);
EXECUTE IMMEDIATE irec.prikaz;
EXCEPTION
WHEN OTHERS THEN DBMS_OUTPUT.put('nen?­ ');
END;
DBMS_OUTPUT.put_line('zrusen(a) '||irec.object_type||' '||irec.object_name);
END LOOP;
SELECT COUNT(*) INTO v_pom
FROM user_objects
WHERE object_name 'ZRUS_ALL_OBJEKTY_SCHEMATU';
EXIT WHEN v_pom = 0;
END LOOP;
DBMS_OUTPUT.put_line('hotovo!');
END ZRUS_ALL_OBJEKTY_SCHEMATU;
/

execute ZRUS_ALL_OBJEKTY_SCHEMATU; 