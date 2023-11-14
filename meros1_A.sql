DECLARE
    v_stu_id enrollments.stu_id%TYPE := :student_id; 
    v_class_id enrollments.class_id%TYPE := :class_id;
BEGIN
     v_stu_id := &v_stu_id;
     v_class_id := &v_class_id;
     
    INSERT INTO enrollments (enrollment_date, class_id , stu_id, final_numeric_grade,final_letter_grade,status)
    VALUES (to_date('2023/11/14','yyyy-mm-dd'), v_class_id,v_stu_id, null, null,'enrolled' );
    
END;
/
