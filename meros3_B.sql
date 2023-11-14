DECLARE
    v_class_id enrollments.class_id%TYPE;
    v_final_numeric_grade enrollments.final_numeric_grade%TYPE;
    v_count int;
    v_average_grade int;
BEGIN
    v_class_id := &v_class_id;
    SELECT AVG(final_numeric_grade)
    INTO v_count
    FROM enrollments 
    WHERE  v_class_id = class_id;
     DBMS_output.put_line('Student Count:'||v_count);
END;
/
