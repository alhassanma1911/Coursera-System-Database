USE Coursera ;

CREATE VIEW CourseraEnrollmentCount AS
SELECT cc.CourseraCourseName, COUNT(e.StudentID) AS EnrollmentCount
FROM CourseraCourses cc
JOIN Enrollment e ON cc.CourseraCourseCode = e.CourseraCourseCode
GROUP BY cc.CourseraCourseName;

CREATE VIEW AiuAvgModules AS
SELECT ac.AiuCourseName, AVG(m.NoOfModules) AS AvgModules
FROM AiuCourses ac
JOIN Module m ON ac.AiuCourseCode = m.AiuCourseCode
GROUP BY ac.AiuCourseName;

CREATE VIEW InstructorCoursesTaught AS
SELECT i.InstructorName, COUNT(t.InstructorID) AS CoursesTaught
FROM Instructor i
JOIN TeachThem t ON i.InstructorID = t.InstructorID
GROUP BY i.InstructorName;

CREATE VIEW StudentFieldCount AS
SELECT Field, COUNT(StudentID) AS StudentCount
FROM Student
GROUP BY Field;

CREATE VIEW ProgramInstructorCount AS
SELECT ProgramName, NoOfInstructors
FROM Program
LIMIT 4;

CREATE VIEW FieldAvgInstructorAge AS
SELECT Field, AVG(InstructorAge) AS AvgAge
FROM Instructor
GROUP BY Field;




