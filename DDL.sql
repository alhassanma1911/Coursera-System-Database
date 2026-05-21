CREATE DATABASE Coursera ;
USE Coursera ;
CREATE TABLE CourseraCourses (
    CourseraCourseCode INT PRIMARY KEY,
    CourseraCourseName VARCHAR(255),
    CourseraCourseField VARCHAR(255),
    EnrollmentDate DATE,
    Deadline DATE
);

CREATE TABLE AiuCourses (
    AiuCourseCode INT PRIMARY KEY,
    CourseraCourseCode INT,
    FacultyCode INT,
    AiuCourseName VARCHAR(255),
    AiuField VARCHAR(255),
    EnrollmentDate DATE,
    Deadline DATE,
    FOREIGN KEY (CourseraCourseCode) REFERENCES CourseraCourses (CourseraCourseCode),
    FOREIGN KEY (FacultyCode) REFERENCES Field (FacultyCode)
);

CREATE TABLE Instructor (
    InstructorID INT PRIMARY KEY,
    ProgramCode INT,
    InstructorName VARCHAR(255),
    InstructorAge INT,
    Field VARCHAR(255),
    InstructorPhoneNo VARCHAR(20),
	FOREIGN KEY (ProgramCode) REFERENCES Program (ProgramCode)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    ProgramCode INT,
    AiuCourseCode INT,
    StudentName VARCHAR(255),
    Level INT,
    Field VARCHAR(255),
    HouseNo INT,
    Street VARCHAR(255),
    PIN INT,
    DateOfBirth DATE,
    Email VARCHAR(255),
    StudentPhoneNo VARCHAR(20),
    FOREIGN KEY (AiuCourseCode) REFERENCES AiuCourses (AiuCourseCode),
	FOREIGN KEY (ProgramCode) REFERENCES Program (ProgramCode)
);

CREATE TABLE Admin (
    AdminID INT PRIMARY KEY,
    AdminName VARCHAR(255),
    Program VARCHAR(255)
);

CREATE TABLE Field (
    FacultyCode INT PRIMARY KEY,
    FacultyName VARCHAR(255),
    FieldProgram VARCHAR(255)
);

CREATE TABLE CS (
    FacultyCode INT PRIMARY KEY,
    ComputerLabs VARCHAR(255),
    CONSTRAINT Field FOREIGN KEY (FacultyCode) REFERENCES Field(FacultyCode)
);

CREATE TABLE Engineering (
    FacultyCode INT PRIMARY KEY,
    MechanicalLabs VARCHAR(255),
    CONSTRAINT fk_engineering_field FOREIGN KEY (FacultyCode) REFERENCES Field(FacultyCode)
    );

CREATE TABLE Pharmacy (
    FacultyCode INT PRIMARY KEY,
    ChemistryLabs VARCHAR(255),
    CONSTRAINT fk_pharmacy_field FOREIGN KEY (FacultyCode) REFERENCES Field(FacultyCode)
    );

CREATE TABLE Dentistry (
    FacultyCode INT PRIMARY KEY,
    FixedLabs VARCHAR(255),
    CONSTRAINT dentistry FOREIGN KEY (FacultyCode) REFERENCES Field(FacultyCode)
    );


CREATE TABLE Program (
    ProgramCode INT PRIMARY KEY,
    AdminID INT,
    ProgramName VARCHAR(255),
    NoOfStudents INT,
    NoOfInstructors INT,
    NoOfCourses INT,
    FOREIGN KEY (AdminID) REFERENCES Admin (AdminID)
);

CREATE TABLE License (
    LicenseCourseCode INT PRIMARY KEY,
    StudentID INT,
    CourseraCourseCode INT,
    LicenseCourseName VARCHAR(255),
    LicenseDate DATE,
    NoOfLicenses INT,
    FOREIGN KEY (StudentID) REFERENCES Student (StudentID),
    FOREIGN KEY (CourseraCourseCode) REFERENCES CourseraCourses (CourseraCourseCode)
);

CREATE TABLE Enrollment (
    EnrollmentCourseCode INT PRIMARY KEY,
    StudentID INT,
    CourseraCourseCode INT,
    EnrollmentCourseName VARCHAR(255),
    EnrollmentDate DATE,
    NoOfEnrollments INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseraCourseCode) REFERENCES CourseraCourses(CourseraCourseCode)
);

CREATE TABLE Module (
    ModuleCourseCode INT PRIMARY KEY,
    AiuCourseCode INT,
    ModuleCourseName VARCHAR(255),
    NoOfModules INT,
    NoOfHours INT,
    FOREIGN KEY (AiuCourseCode) REFERENCES AiuCourses(AiuCourseCode)
);

CREATE TABLE WorkAt (
    CourseraCourseCode INT,
    InstructorID INT,
    FOREIGN KEY (CourseraCourseCode) REFERENCES CourseraCourses(CourseraCourseCode),
    FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
);

CREATE TABLE Learn (
    CourseraCourseCode INT,
    StudentID INT,
    FOREIGN KEY (CourseraCourseCode) REFERENCES CourseraCourses(CourseraCourseCode),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

CREATE TABLE TeachThem (
    AiuCourseCode INT,
    InstructorID INT,
    FOREIGN KEY (AiuCourseCode) REFERENCES AiuCourses(AiuCourseCode),
    FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
);

CREATE TABLE Enroll (
    AiuCourseCode INT,
    StudentID INT,
    FOREIGN KEY (AiuCourseCode) REFERENCES AiuCourses(AiuCourseCode),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

CREATE TABLE Teach (
    InstructorID INT,
    StudentID INT,
    Curricula VARCHAR(255),
    FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

