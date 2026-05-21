use Coursera;

DELIMITER //

CREATE PROCEDURE GetCourseraEnrollmentCount()
BEGIN
    SELECT cc.CourseraCourseName, COUNT(e.StudentID) AS EnrollmentCount
    FROM CourseraCourses cc
    JOIN Enrollment e ON cc.CourseraCourseCode = e.CourseraCourseCode
    GROUP BY cc.CourseraCourseName;
END//

DELIMITER //

DELIMITER //

CREATE PROCEDURE GetAiuAvgModules()
BEGIN
    SELECT ac.AiuCourseName, AVG(m.NoOfModules) AS AvgModules
    FROM AiuCourses ac
    JOIN Module m ON ac.AiuCourseCode = m.AiuCourseCode
    GROUP BY ac.AiuCourseName;
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE GetInstructorCoursesTaught()
BEGIN
    SELECT i.InstructorName, COUNT(t.InstructorID) AS CoursesTaught
    FROM Instructor i
    JOIN TeachThem t ON i.InstructorID = t.InstructorID
    GROUP BY i.InstructorName;
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE GetStudentFieldCount()
BEGIN
    SELECT Field, COUNT(StudentID) AS StudentCount
    FROM Student
    GROUP BY Field;
END //

DELIMITER ;

CALL GetCourseraEnrollmentCount();
CALL GetAiuAvgModules();
CALL GetInstructorCoursesTaught();
CALL GetStudentFieldCount();



