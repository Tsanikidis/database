DECLARE
    v_class_id enrollments.class_id%TYPE;
    v_count int;
BEGIN
    v_class_id := &v_class_id;
    SELECT COUNT(class_id)
    INTO v_count
    FROM enrollments 
    WHERE  v_class_id = class_id;
    DBMS_output.put_line('Student Count:'||v_count);
END;
/
