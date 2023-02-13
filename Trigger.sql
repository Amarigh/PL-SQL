/*
A trigger is a PL/SQL block that is automatically executed in response to a specific event,
such as a change to a table's data. 
Triggers can be used to enforce business rules, maintain data integrity, 
and perform other tasks automatically when changes are made to the data in a table.
*/

CREATE [OR REPLACE] TRIGGER trigger_name
[BEFORE|AFTER] event_type  -- event_type = DELETE, INSERT , UPDATE
 [OF column_name] 
 ON table_name
[REFERENCING OLD AS old_alias NEW AS new_alias] 
[FOR EACH ROW] 
BEGIN 
  -- PL/SQL statements 
END;