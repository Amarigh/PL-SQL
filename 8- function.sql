
create or replace function sume(a in integer, b in integer) return integer as

begin 
return a+b;
end;


declare
    a integer := 2;
    b integer := 4;
    c integer := sume(a,b);
begin 
    dbms_output.put_line(c);
end;
