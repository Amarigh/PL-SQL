-- The basic unit of a PL/SQL source program is the block, which groups related declarations
-- and statements. 
-- A PL/SQL block is defined by the keywords DECLARE, BEGIN, EXCEPTION, and END.
-- These keywords divide the block into a declarative part, an executable part,
--  and an exception-handling part. Only the executable part is required.

-- First Message 
Begin
dbms_output.put_line('hello world');
End;

-- Because an anonymous block can have its own declaration and exception sections,
-- developers can use anonymous blocks to provide scope for identifiers and exception handling
-- within a larger program.

declare 
today date :=sysdate;
begin 
dbms_output.put_line('today is ' || to_char(today,'day'));

exception when others then
    dbms_output.put_line(sqlerrm);
end;
