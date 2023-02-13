--- while loop

DECLARE
    counter INTEGER := 1;
BEGIN
    DBMS_OUTPUT.PUT_LINE('loop with while');
    WHILE counter <= 10 LOOP
        DBMS_OUTPUT.PUT_LINE(counter);
        counter := counter + 1;
    END LOOP;
END;


--- while loop using exit 

DECLARE
    counter INTEGER := 1;
BEGIN
    DBMS_OUTPUT.PUT_LINE('loop with exit');
    LOOP
        exit when counter>10;
        DBMS_OUTPUT.PUT_LINE(counter);
        counter := counter + 1;
    END LOOP;
END;
