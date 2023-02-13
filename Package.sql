/*

In PL/SQL, a package is a group of related procedures, functions, variables, and other constructs
that are grouped together in a single, self-contained unit. Packages provide a way to organize 
and modularize PL/SQL code, making it easier to manage, reuse, and maintain.

A package has two parts: the package specification and the package body.
   The package specification defines the public interface of the package, including the procedures
and functions that can be called by other PL/SQL blocks.
   The package body contains the implementation details of the procedures and functions defined
in the package specification, as well as any private variables or other constructs that are not part
of the public interface.


*/

-- package specification 
PACKAGE my_package IS 
     -- public procedure to calculate the area of a rectangle 
    PROCEDURE calculate_area (length IN NUMBER, width IN NUMBER, area OUT NUMBER); 
END my_package;

-- package body 
PACKAGE BODY my_package IS 
          -- private variable to store the number of rectangles processed 
    rectangles_processed NUMBER := 0;
         -- implementation of the calculate_area procedure 
    PROCEDURE calculate_area (length IN NUMBER, width IN NUMBER, area OUT NUMBER) IS 
    BEGIN 
        area := length * width; 
        rectangles_processed := rectangles_processed + 1;
    END calculate_area;
END my_package;

-- example

CREATE OR REPLACE PACKAGE my_package AS
     -- public procedure to calculate the area of a rectangle
  PROCEDURE calculate_area(length IN NUMBER, width IN NUMBER,area out number);

      -- public function to calculate the perimeter of a rectangle
  FUNCTION calculate_perimeter(length IN NUMBER, width IN NUMBER) RETURN NUMBER;

    -- public constant to hold the pi value
   pi constant number := 3.14;
  
END my_package;


CREATE OR REPLACE PACKAGE BODY  my_package AS
    -- private variable to store the number of rectangles processed
    rectangles_processed NUMBER := 0;

    -- private function 
    function calculate (length IN NUMBER, width IN NUMBER) RETURN NUMBER iS
      area number;
    BEGIN
        area := length * width;
        rectangles_processed := rectangles_processed + 1;
        return area;
    END calculate;

  -- implementation of the calculate_area procedure
    PROCEDURE calculate_area (length IN NUMBER, width IN NUMBER, area OUT NUMBER) iS
    BEGIN
        area := length * width;
        rectangles_processed := rectangles_processed + 1;
    END calculate_area;

    -- implementation of the calculate_perimeter function
    FUNCTION calculate_perimeter (length IN NUMBER, width IN NUMBER) RETURN NUMBER IS
    BEGIN
        RETURN 2 * (length + width);
    END calculate_perimeter;

END my_package; 


---- execution 
declare 
    a number ;
    b number;
begin 
    a:= my_package.calculate_perimeter(5,5);
    b := my_package.calculate(10,4); -- private function we can't called it 
    dbms_output.put_line(a);
    dbms_output.put_line(b);
end;







