DECLARE
    v_stu_id enrollments.stu_id%TYPE := :student_id; 
    v_class_id enrollments.class_id%TYPE := :class_id;
BEGIN
     v_stu_id := &v_stu_id;
     v_class_id := &v_class_id;
     DELETE ENROLLMENTS WHERE class_id = v_class_id and stu_id = v_stu_id ;
END;
/
