DECLARE
     v_stu_id class_assessments.stu_id%TYPE := :student_id; 
     v_class_id class_assessments.class_id%TYPE := :class_id;
     v_class_assessment_id class_assessments.assessment_id%TYPE := :class_assessments_id;
     v_numeric_grade class_assessments.numeric_grade%TYPE := :numeric_grade;
BEGIN
    v_class_assessment_id := &v_class_assessment_id;
    v_numeric_grade := &v_numeric_grade;
    v_class_id := &v_class_id;
    v_stu_id := &v_stu_id;

    INSERT INTO class_assessments (class_assessment_id, date_turned_in, numeric_grade, letter_grade, comments, class_id, stu_id, assessment_id)
    VALUES (v_class_assessment_id, TO_DATE('2023/11/15', 'yyyy/mm/dd'), v_numeric_grade, NULL, NULL, v_class_id, v_stu_id, '1');
END;
/
