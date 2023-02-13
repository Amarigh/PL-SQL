
-- Syntax
Begin 
      For r in start .. end 
       Loop
       End loop;
End; 

-- example 

DECLARE
   CURSOR c IS select PROD_ID , CUST_ID from bi.sales WHERE ROWNUM <= 5;
   v_prod_id bi.sales.PROD_ID%TYPE;
   v_cus_id bi.sales.CUST_ID%TYPE;
BEGIN
   FOR rec IN c
   LOOP
      v_prod_id := rec.PROD_ID;
      v_cus_id := rec.CUST_ID;
      DBMS_OUTPUT.PUT_LINE(v_prod_id || ' ' || v_cus_id);
   END LOOP;
END;

