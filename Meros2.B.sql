DECLARE
  n_numeric int;
BEGIN
   DBMS_OUTPUT.PUT_LINE('give me  your grade:  ');
    n_numeric := &n_numeric;
    
    IF n_numeric >= 90 then 
       DBMS_OUTPUT.PUT_LINE('Your grade is A ');
    ELSIF n_numeric >=80 AND n_numeric < 90 then 
        DBMS_OUTPUT.PUT_LINE(' Your grade is B  ');
    ELSIF n_numeric >=70 AND n_numeric <80 then
        DBMS_OUTPUT.PUT_LINE(' Your grade is C  ');
    ELSIF n_numeric >= 60 AND n_numeric <70 then 
       DBMS_OUTPUT.PUT_LINE('Your grade is D ');
    ELSE
       DBMS_OUTPUT.PUT_LINE('Your grade is F ');
    END IF;
      
END;
/
