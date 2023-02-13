-- With PL/SQL it is easy to integrate SQL statements, 
-- the example below shows an example of using SELECT INTO with an Oracle data dictionary table.



declare
    num_rows integer;
begin
    select count(*) into num_rows 
    from bi.sales;
    dbms_output.put_line('number of rows are ' || num_rows);

end;
