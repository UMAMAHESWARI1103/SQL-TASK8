--STORED PROCEDURE-Get all appointments for a specific doctor.
DELIMITER //

CREATE PROCEDURE GetAppointmentsByDoctor(IN doc_id INT)
BEGIN
    SELECT a.appointment_id, p.name AS patient_name, a.appointment_date
    FROM appointment a
    JOIN patient p ON a.patient_id = p.patient_id
    WHERE a.doctor_id = doc_id;
END //

DELIMITER ;

CALL GetAppointmentsByDoctor(101);

--FUNCTION--Return the total number of appointments for a doctor.
DELIMITER //

CREATE FUNCTION TotalAppointmentsForDoctor(doc_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total
    FROM appointment
    WHERE doctor_id = doc_id;
    RETURN total;
END //

DELIMITER ;

SELECT TotalAppointmentsForDoctor(101) AS total_appointments;
