-- synthax 
Case n
     When value then    
      When value then  
      Else 
End case 

Case 
     When condition  then    
      When condition  then   …
      Else 
End case 


-- create procedure and use in it a case statment 
create or replace procedure boolean_test (bl in boolean) as 
g boolean :=bl;
begin
case g 
    when null  then DBMS_OUTPUT.put_line ('nul ');
    when  true then DBMS_OUTPUT.put_line ('true');
     when  false then DBMS_OUTPUT.put_line ('false');
    else DBMS_OUTPUT.put_line ('others');
   end case;

end;

-- call boolean_test (true);
exec  boolean_test(true);

-- using pl/sql block 
begin 
boolean_test(true);
end;
