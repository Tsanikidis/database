DECLARE
    v_assessment_id assessments.assessment_id%TYPE := &v_assessment_id; 
    v_description assessments.description%TYPE := '&v_description';
BEGIN
    v_assessment_id := &v_assessment_id;
    v_description := '&v_description';

    INSERT INTO assessments (assessment_id, description, grading_criteria)
    VALUES (v_assessment_id, v_description, 'numeric');
END;
/
