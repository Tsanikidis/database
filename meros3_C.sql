DECLARE
    v_class_id classes.class_id%TYPE;
    v_course_id courses.course_id%TYPE;
    v_count int;
BEGIN
    v_course_id :=&v_course_id;
    v_count:=0;
    FOR i IN (select course_id from courses where  v_course_id=course_id )LOOP
        v_course_id := i.course_id;
            FOR j IN (select class_id from classes where v_course_id=course_id)LOOP
                v_class_id := j.class_id;
                v_count := v_count+1;
                DBMS_output.put_line('Classes per course:'||v_count);
            END LOOP;
    END LOOP;
    
END;
/
