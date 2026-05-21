USE Coursera ;

SELECT cc.CourseraCourseName, COUNT(e.StudentID) AS EnrollmentCount
FROM CourseraCourses cc
JOIN Enrollment e ON cc.CourseraCourseCode = e.CourseraCourseCode
GROUP BY cc.CourseraCourseName;

SELECT ac.AiuCourseName, AVG(m.NoOfModules) AS AvgModules
FROM AiuCourses ac
JOIN Module m ON ac.AiuCourseCode = m.AiuCourseCode
GROUP BY ac.AiuCourseName;

SELECT i.InstructorName, COUNT(t.InstructorID) AS CoursesTaught
FROM Instructor i
JOIN TeachThem t ON i.InstructorID = t.InstructorID
GROUP BY i.InstructorName;

SELECT Field, COUNT(StudentID) AS StudentCount
FROM Student
GROUP BY Field;

SELECT ProgramName, NoOfInstructors
FROM Program
LIMIT 4;

SELECT Field, AVG(InstructorAge) AS AvgAge
FROM Instructor
GROUP BY Field;
