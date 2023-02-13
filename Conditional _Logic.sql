-- Let’s add some conditional logic using if ... then ... else syntax. 
-- The TO_CHAR function can be used to format dates and number data types.
--  The D format mask is the day of the week, a number between 1 and 7. 


declare
    l_today date := sysdate;
begin
    if to_char(l_today,'D') <=4 then
        dbms_output.put_line('Have a wonderful week');
    
    else

        if to_char(l_today,'D') < 4 then
            dbms_output.put_line( 'Have a wonderful week');
        else
            dbms_output.put_line('Enjoy the rest of the week');
        end if;
    end if;
    dbms_output.put_line('today is '||to_char(l_today,'Day') ||
                            ' day '||to_char(l_today,'D') || ' of the week.');
end;
