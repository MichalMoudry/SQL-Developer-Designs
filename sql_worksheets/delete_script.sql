--delete contraints
begin
    for r in ( select table_name, constraint_name
               from user_constraints
               where constraint_type = 'R' )
    loop
        execute immediate 'alter table '|| r.table_name
                          ||' drop constraint '|| r.constraint_name;
    end loop;
end;

--delete table
drop table dodavatel;
drop table zbozi;
drop table stravnik;
drop table nakup_zbozi;
drop table nakup;
drop table konto;

--delete rows
DELETE FROM KONTO WHERE ID_KONTA = 1;
DELETE FROM STRAVNIK WHERE ID_STRAVNIKA = 1;
DELETE FROM DODAVATEL WHERE ID_DODAVATELE = 3;