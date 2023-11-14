DECLARE
    v_stu_id enrollments.stu_id%TYPE;
    v_class_id enrollments.class_id%TYPE;
    today DATE;
    ten_years_ago DATE;
 BEGIN
    v_stu_id := &v_stu_id;
    today := SYSDATE;
    ten_years_ago := ADD_MONTHS(today, -12*10);
    
    FOR I IN (SELECT CLASS_ID, ENROLLMENT_DATE, STATUS 
              FROM ENROLLMENTS 
              WHERE STU_ID = v_stu_id AND ten_years_ago < ENROLLMENT_DATE) 
    LOOP
        DBMS_OUTPUT.PUT_LINE('Class ID: ' || I.CLASS_ID);
        DBMS_OUTPUT.PUT_LINE('Enrollment Date: ' || I.ENROLLMENT_DATE);
        DBMS_OUTPUT.PUT_LINE('Status: ' || I.STATUS);
    END LOOP;
END;
/
