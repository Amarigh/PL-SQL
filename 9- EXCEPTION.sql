
/* In PL/SQL, an exception is an event that occurs during the execution of a program 
that disrupts the normal flow of instructions. Exceptions can be handled using the
 EXCEPTION section of a PL/SQL block. When an exception is raised, the normal flow of the program 
 is interrupted and the control is transferred to the exception-handling section of the PL/SQL block.
 The PL/SQL block can then handle the exception, allowing the program to continue its execution
  or terminate gracefully
PL/SQL provides several predefined exceptions, such as NO_DATA_FOUND and TOO_MANY_ROWS, as well as
 the ability to define user-defined exceptions.
*/
-- syntax
BEGIN
 -- code that might raise an exception 
EXCEPTION
 WHEN NO_DATA_FOUND THEN 
-- code to handle the NO_DATA_FOUND exception 
WHEN TOO_MANY_ROWS THEN 
-- code to handle the TOO_MANY_ROWS exception
 WHEN OTHERS THEN
-- code to handle any other exceptions 
END;

-- example 

declare 
    variable1 integer ;
    variable2 integer;
BEGIN

/*
        SELECT PROD_ID , CUST_ID INTO variable1, variable2
        FROM bi.sales
        WHERE rownum<=2;
*/

    select PROD_ID , CUST_ID INTO variable1, variable2
    from bi.sales where PROD_ID > 148;

    dbms_output.put_line(variable1 || 'uuuu' || variable2);

EXCEPTION
    WHEN TOO_MANY_ROWS THEN
        dbms_output.put_line('the query must reurn only one row');

    when NO_DATA_FOUND THEN 
        dbms_output.put_line('the query should not  reurn empty ');

    when others then
        dbms_output.put_line('found your error ');
END;



---  RAISE statement and create an exception 
declare 
    a integer := 1;
    b integer := 2;
    c float ;
    exception_test exception;
begin
    c:= a/b;
      dbms_output.put_line('cc '|| c);
    if a=1 then 
        raise exception_test;
    end if ;
exception 
    when ZERO_DIVIDE then 
         dbms_output.put_line('you can not devize by zero ');

    when too_many_rows then 
        dbms_output.put_line('request must return only one row');

    when no_data_found then 
        dbms_output.put_line('request is empty');

    when exception_test then 
         dbms_output.put_line('hello exception_test ');
      
    when others then
      dbms_output.put_line('found your error  ');
end;




