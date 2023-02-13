-- Cursor with  Fetch  into 


DECLARE
    CURSOR emp_cursor IS
        SELECT * FROM bi.customers 
        where rownum<=5;
    emp_record  bi.customers%ROWTYPE;
    id integer :=1;
BEGIN
    OPEN emp_cursor;
    loop
        exit when id=5;
        FETCH emp_cursor INTO emp_record;
            DBMS_OUTPUT.PUT_LINE(emp_record.CUST_ID);
        id:=id+1;
    end loop;
    CLOSE emp_cursor;
END;


--- cursor with for loop
DECLARE
    CURSOR emp_cursor IS
        SELECT * FROM bi.customers 
        where rownum<=5;
    emp_record  bi.customers%ROWTYPE;
    id integer :=1;
BEGIN
for rec in emp_cursor
    loop
        DBMS_OUTPUT.PUT_LINE(rec.CUST_ID);
    end loop;
END;






