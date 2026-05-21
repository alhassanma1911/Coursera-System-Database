USE Coursera ;
-- Inserting data into CourseraCourses table
INSERT INTO CourseraCourses (CourseraCourseCode, CourseraCourseName, CourseraCourseField, EnrollmentDate, Deadline)
VALUES
    (1, 'Introduction to Python', 'Computer Science', '2024-01-01', '2024-05-01'),
    (2, 'Machine Learning Fundamentals', 'Artificial Intelligence', '2024-02-15', '2024-06-15'),
    (3, 'Data Structures and Algorithms', 'Computer Science', '2024-03-10', '2024-07-10'),
    (4, 'Introduction to Psychology', 'Psychology', '2024-01-20', '2024-05-20'),
    (5, 'Introduction to Accounting', 'Finance', '2024-02-05', '2024-06-05'),
    (6, 'Marketing Essentials', 'Marketing', '2024-03-25', '2024-07-25');

-- Inserting data into AiuCourses table
INSERT INTO AiuCourses (AiuCourseCode, CourseraCourseCode, FacultyCode, AiuCourseName, AiuField, EnrollmentDate, Deadline)
VALUES
    (101, 1, 1, 'Programming Basics', 'Computer Science', '2024-01-01', '2024-05-01'),
    (102, 2, 2, 'Advanced Machine Learning', 'Artificial Intelligence', '2024-02-15', '2024-06-15'),
    (103, 3, 1, 'Algorithm Design', 'Computer Science', '2024-03-10', '2024-07-10'),
    (104, 4, 2, 'Introduction to Clinical Psychology', 'Psychology', '2024-01-20', '2024-05-20'),
    (105, 5, 3, 'Financial Analysis', 'Finance', '2024-02-05', '2024-06-05'),
    (106, 6, 4, 'Consumer Behavior', 'Marketing', '2024-03-25', '2024-07-25');

-- Inserting data into Instructor table
INSERT INTO Instructor (InstructorID, ProgramCode, InstructorName, InstructorAge, Field, InstructorPhoneNo)
VALUES
    (1, 101, 'John Doe', 35, 'Computer Science', '123-456-7890'),
    (2, 102, 'Jane Smith', 40, 'Artificial Intelligence', '234-567-8901'),
    (3, 101, 'Alice Johnson', 30, 'Computer Science', '345-678-9012'),
    (4, 103, 'Bob Brown', 45, 'Psychology', '456-789-0123'),
    (5, 104, 'Emma Davis', 38, 'Finance', '567-890-1234'),
    (6, 105, 'Michael Wilson', 32, 'Marketing', '678-901-2345');

-- Inserting data into Student table
INSERT INTO Student (StudentID, ProgramCode, AiuCourseCode, StudentName, Level, Field, HouseNo, Street, PIN, DateOfBirth, Email, StudentPhoneNo)
VALUES
    (1001, 101, 101, 'Emily Johnson', 2, 'Computer Science', 123, 'Main Street', 12345, '2000-01-15', 'emily@example.com', '789-012-3456'),
    (1002, 102, 102, 'Daniel Smith', 3, 'Artificial Intelligence', 456, 'Oak Avenue', 23456, '1999-05-20', 'daniel@example.com', '890-123-4567'),
    (1003, 101, 103, 'Olivia Brown', 1, 'Computer Science', 789, 'Elm Street', 34567, '2001-03-10', 'olivia@example.com', '901-234-5678'),
    (1004, 103, 104, 'Liam Davis', 2, 'Psychology', 1011, 'Pine Street', 45678, '2000-11-05', 'liam@example.com', '012-345-6789'),
    (1005, 104, 105, 'Ava Wilson', 3, 'Finance', 1213, 'Cedar Street', 56789, '1999-07-25', 'ava@example.com', '123-456-7890'),
    (1006, 105, 106, 'Noah Taylor', 1, 'Marketing', 1415, 'Maple Street', 67890, '2001-09-30', 'noah@example.com', '234-567-8901');

-- Inserting data into Admin table
INSERT INTO Admin (AdminID, AdminName, Program)
VALUES
    (1, 'Admin1', 'Computer Science'),
    (2, 'Admin2', 'Artificial Intelligence'),
    (3, 'Admin3', 'Psychology'),
    (4, 'Admin4', 'Finance'),
    (5, 'Admin5', 'Marketing'),
    (6, 'Admin6', 'Business Administration');

-- Inserting data into Field table
INSERT INTO Field (FacultyCode, FacultyName, FieldProgram)
VALUES
    (1, 'CS', 'Computer Science'),
    (2, 'AI', 'Artificial Intelligence'),
    (3, 'PSY', 'Psychology'),
    (4, 'FIN', 'Finance'),
    (5, 'MKT', 'Marketing'),
    (6, 'BA', 'Business Administration');

-- Inserting data into CS table
INSERT INTO CS (FacultyCode, ComputerLabs)
VALUES
    (1, 'Lab1'),
    (2, 'Lab2'),
    (3, 'Lab3'),
    (4, 'Lab4'),
    (5, 'Lab5'),
    (6, 'Lab6');

-- Inserting data into Engineering table
INSERT INTO Engineering (FacultyCode, MechanicalLabs)
VALUES
    (1, 'MechLab1'),
    (2, 'MechLab2'),
    (3, 'MechLab3'),
    (4, 'MechLab4'),
    (5, 'MechLab5'),
    (6, 'MechLab6');

-- Inserting data into Pharmacy table
INSERT INTO Pharmacy (FacultyCode, ChemistryLabs)
VALUES
    (1, 'ChemLab1'),
    (2, 'ChemLab2'),
    (3, 'ChemLab3'),
    (4, 'ChemLab4'),
    (5, 'ChemLab5'),
    (6, 'ChemLab6');

-- Inserting data into Dentistry table
INSERT INTO Dentistry (FacultyCode, FixedLabs)
VALUES
    (1, 'DentLab1'),
    (2, 'DentLab2'),
    (3, 'DentLab3'),
    (4, 'DentLab4'),
    (5, 'DentLab5'),
    (6, 'DentLab6');

-- Inserting data into Program table
INSERT INTO Program (ProgramCode, AdminID, ProgramName, NoOfStudents, NoOfInstructors, NoOfCourses)
VALUES
    (101, 1, 'Computer Science', 100, 10, 8),
    (102, 2, 'Artificial Intelligence', 80, 8, 6),
    (103, 3, 'Psychology', 60, 6, 4),
    (104, 4, 'Finance', 70, 7, 5),
    (105, 5, 'Marketing', 90, 9, 7),
    (106, 6, 'Business Administration', 75, 7, 5);

-- Inserting data into License table
INSERT INTO License (LicenseCourseCode, StudentID, CourseraCourseCode, LicenseCourseName, LicenseDate, NoOfLicenses)
VALUES
    (1, 1001, 1, 'Python Certificate', '2024-05-05', 1),
    (2, 1002, 2, 'Machine Learning Certificate', '2024-06-20', 1),
    (3, 1003, 3, 'Algorithm Design Certificate', '2024-07-15', 1),
    (4, 1004, 4, 'Psychology Essentials Certificate', '2024-05-25', 1),
    (5, 1005, 5, 'Finance Basics Certificate', '2024-06-30', 1),
    (6, 1006, 6, 'Marketing Fundamentals Certificate', '2024-07-30', 1);

-- Inserting data into Enrollment table
INSERT INTO Enrollment (EnrollmentCourseCode, StudentID, CourseraCourseCode, EnrollmentCourseName, EnrollmentDate, NoOfEnrollments)
VALUES
    (1, 1001, 1, 'Introduction to Python', '2024-01-01', 1),
    (2, 1002, 2, 'Machine Learning Fundamentals', '2024-02-15', 1),
    (3, 1003, 3, 'Data Structures and Algorithms', '2024-03-10', 1),
    (4, 1004, 4, 'Introduction to Psychology', '2024-01-20', 1),
    (5, 1005, 5, 'Introduction to Accounting', '2024-02-05', 1),
    (6, 1006, 6, 'Marketing Essentials', '2024-03-25', 1);

-- Inserting data into Module table
INSERT INTO Module (ModuleCourseCode, AiuCourseCode, ModuleCourseName, NoOfModules, NoOfHours)
VALUES
    (1, 101, 'Introduction to Programming', 10, 20),
    (2, 102, 'Machine Learning Concepts', 8, 15),
    (3, 103, 'Advanced Data Structures', 12, 25),
    (4, 104, 'Clinical Psychology Basics', 6, 10),
    (5, 105, 'Financial Analysis Techniques', 9, 18),
    (6, 106, 'Consumer Behavior Analysis', 7, 12);

-- Inserting data into WorkAt table
INSERT INTO WorkAt (CourseraCourseCode, InstructorID)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6);

-- Inserting data into Learn table
INSERT INTO Learn (CourseraCourseCode, StudentID)
VALUES
    (1, 1001),
    (2, 1002),
    (3, 1003),
    (4, 1004),
    (5, 1005),
    (6, 1006);

-- Inserting data into TeachThem table
INSERT INTO TeachThem (AiuCourseCode, InstructorID)
VALUES
    (101, 1),
    (102, 2),
    (103, 3),
    (104, 4),
    (105, 5),
    (106, 6);

-- Inserting data into Enroll table
INSERT INTO Enroll (AiuCourseCode, StudentID)
VALUES
    (101, 1001),
    (102, 1002),
    (103, 1003),
    (104, 1004),
    (105, 1005),
    (106, 1006);

-- Inserting data into Teach table
INSERT INTO Teach (InstructorID, StudentID, Curricula)
VALUES
    (1, 1001, 'Python Programming Basics'),
    (2, 1002, 'Machine Learning Fundamentals'),
    (3, 1003, 'Algorithm Design Concepts'),
    (4, 1004, 'Clinical Psychology Essentials'),
    (5, 1005, 'Financial Analysis Techniques'),
    (6, 1006, 'Consumer Behavior Analysis');
