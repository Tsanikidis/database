DECLARE
    v_assessment_id assessments.assessment_id%TYPE ; 
    v_description assessments.description%TYPE := 'description';
BEGIN
    v_assessment_id := &v_assessment_id;
    v_description := '&v_description';

    INSERT INTO assessments (assessment_id, description, grading_criteria)
    VALUES (v_assessment_id, v_description, 'numeric');
END;
/
