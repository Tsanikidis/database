DECLARE
    v_instr_id classes.instr_id%TYPE; 
    v_course_id classes.course_id%TYPE;
    v_class_id enrollments.class_id%TYPE;
    v_stu_id enrollments.stu_id%TYPE;
    v_first_name students.first_name%TYPE;
    v_last_name students.last_name%TYPE;
    v_status enrollments.status%TYPE;
BEGIN
    v_instr_id :=&v_instr_id;
    v_course_id :=&v_course_id;
    for i in (select class_id from classes where instr_id =  v_instr_id  and course_id = v_course_id) LOOP
         v_class_id := i.class_id;
            for j in (select stu_id,status from enrollments where class_id=v_class_id) LOOP
                v_stu_id := j.stu_id;
                v_status := j.status;
                    for x in (select first_name , last_name from students where stu_id = v_stu_id)LOOP
                        v_first_name := x.first_name ;
                        v_last_name := x.last_name ;
                            DBMS_output.put_line('First Name:'|| v_first_name);
                            DBMS_output.put_line('Last Name:'|| v_last_name);
                            DBMS_output.put_line('Status:'|| v_status);
                            DBMS_output.put_line('Class Id:'|| v_class_id);
                             DBMS_output.put_line(CHR(10));
                    END LOOP;
            END LOOP;        
    END LOOP;
    
END;
/
