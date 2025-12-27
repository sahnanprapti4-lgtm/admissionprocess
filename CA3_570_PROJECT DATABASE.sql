CREATE DATABASE college_adm;
USE college_adm;

CREATE TABLE departments (
  dept_id INT AUTO_INCREMENT PRIMARY KEY,
  dept_code VARCHAR(10) NOT NULL UNIQUE,
  name VARCHAR(100) NOT NULL
);

-- Part 1: Departments (50 realistic department names)
INSERT INTO departments (dept_code, name) VALUES
('D01', 'Computer Science'),
('D02', 'Information Technology'),
('D03', 'Electronics & Communication'),
('D04', 'Electrical Engineering'),
('D05', 'Mechanical Engineering'),
('D06', 'Civil Engineering'),
('D07', 'Chemical Engineering'),
('D08', 'Biotechnology'),
('D09', 'Biomedical Engineering'),
('D10', 'Pharmacy'),
('D11', 'Architecture'),
('D12', 'Mathematics'),
('D13', 'Physics'),
('D14', 'Chemistry'),
('D15', 'Statistics'),
('D16', 'Environmental Science'),
('D17', 'Humanities'),
('D18', 'English'),
('D19', 'Economics'),
('D20', 'Commerce'),
('D21', 'Business Administration'),
('D22', 'Management Studies'),
('D23', 'Law'),
('D24', 'Sociology'),
('D25', 'Psychology'),
('D26', 'Fine Arts'),
('D27', 'Design'),
('D28', 'Journalism & Mass Communication'),
('D29', 'Hotel Management'),
('D30', 'Physical Education'),
('D31', 'Agriculture'),
('D32', 'Food Technology'),
('D33', 'Nanotechnology'),
('D34', 'Geology'),
('D35', 'Marine Engineering'),
('D36', 'Computer Applications'),
('D37', 'Data Science'),
('D38', 'Artificial Intelligence'),
('D39', 'Cyber Security'),
('D40', 'Robotics'),
('D41', 'Automotive Engineering'),
('D42', 'Aerospace Engineering'),
('D43', 'Textile Engineering'),
('D44', 'Metallurgical Engineering'),
('D45', 'Industrial Engineering'),
('D46', 'Renewable Energy'),
('D47', 'Urban Planning'),
('D48', 'Rural Development'),
('D49', 'Library & Information Science'),
('D50', 'Performing & Visual Arts');

CREATE TABLE programs (
  program_id INT AUTO_INCREMENT PRIMARY KEY,
  dept_id INT NOT NULL,
  code VARCHAR(12) NOT NULL UNIQUE,
  name VARCHAR(120) NOT NULL,
  duration_years TINYINT NOT NULL,
  total_seats INT NOT NULL DEFAULT 30,
  seats_available INT NOT NULL DEFAULT 30,
  FOREIGN KEY (dept_id) REFERENCES departments(dept_id) ON DELETE CASCADE
);

INSERT INTO programs (dept_id, code, name, duration_years, total_seats, seats_available) VALUES
(1, 'P001', 'B.Tech Computer Science Engineering', 4, 60, 60),
(2, 'P002', 'B.Tech Information Technology', 4, 60, 60),
(3, 'P003', 'B.Tech Electronics & Communication Engineering', 4, 60, 60),
(4, 'P004', 'B.Tech Electrical Engineering', 4, 60, 60),
(5, 'P005', 'B.Tech Mechanical Engineering', 4, 60, 60),
(6, 'P006', 'B.Tech Civil Engineering', 4, 60, 60),
(7, 'P007', 'B.Tech Chemical Engineering', 4, 60, 60),
(8, 'P008', 'B.Tech Biotechnology', 4, 60, 60),
(9, 'P009', 'B.Tech Biomedical Engineering', 4, 60, 60),
(10, 'P010', 'Bachelor of Pharmacy (B.Pharm)', 4, 60, 60),

(11, 'P011', 'Bachelor of Architecture (B.Arch)', 5, 60, 60),
(12, 'P012', 'B.Sc Mathematics', 3, 60, 60),
(13, 'P013', 'B.Sc Physics', 3, 60, 60),
(14, 'P014', 'B.Sc Chemistry', 3, 60, 60),
(15, 'P015', 'B.Sc Statistics', 3, 60, 60),

(16, 'P016', 'B.Sc Environmental Science', 3, 60, 60),
(17, 'P017', 'BA Humanities', 3, 60, 60),
(18, 'P018', 'BA English Literature', 3, 60, 60),
(19, 'P019', 'BA Economics', 3, 60, 60),
(20, 'P020', 'B.Com General', 3, 60, 60),

(21, 'P021', 'BBA Bachelor of Business Administration', 3, 60, 60),
(22, 'P022', 'MBA Master of Business Administration', 2, 60, 60),
(23, 'P023', 'LLB Bachelor of Law', 3, 60, 60),
(24, 'P024', 'BA Sociology', 3, 60, 60),
(25, 'P025', 'BA Psychology', 3, 60, 60),

(26, 'P026', 'Bachelor of Fine Arts (BFA)', 3, 60, 60),
(27, 'P027', 'Bachelor of Design (B.Des)', 4, 60, 60),
(28, 'P028', 'BA Journalism & Mass Communication', 3, 60, 60),
(29, 'P029', 'BHM Hotel Management', 4, 60, 60),
(30, 'P030', 'BPEd Physical Education', 3, 60, 60),

(31, 'P031', 'B.Sc Agriculture', 4, 60, 60),
(32, 'P032', 'B.Tech Food Technology', 4, 60, 60),
(33, 'P033', 'B.Tech Nanotechnology', 4, 60, 60),
(34, 'P034', 'B.Sc Geology', 3, 60, 60),
(35, 'P035', 'B.Tech Marine Engineering', 4, 60, 60),

(36, 'P036', 'BCA Bachelor of Computer Applications', 3, 60, 60),
(37, 'P037', 'B.Sc Data Science', 3, 60, 60),
(38, 'P038', 'B.Tech Artificial Intelligence', 4, 60, 60),
(39, 'P039', 'B.Tech Cyber Security', 4, 60, 60),
(40, 'P040', 'B.Tech Robotics', 4, 60, 60),

(41, 'P041', 'B.Tech Automotive Engineering', 4, 60, 60),
(42, 'P042', 'B.Tech Aerospace Engineering', 4, 60, 60),
(43, 'P043', 'B.Tech Textile Engineering', 4, 60, 60),
(44, 'P044', 'B.Tech Metallurgical Engineering', 4, 60, 60),
(45, 'P045', 'B.Tech Industrial Engineering', 4, 60, 60),

(46, 'P046', 'B.Tech Renewable Energy Engineering', 4, 60, 60),
(47, 'P047', 'Bachelor of Urban Planning', 4, 60, 60),
(48, 'P048', 'BA Rural Development', 3, 60, 60),
(49, 'P049', 'Bachelor of Library & Information Science', 3, 60, 60),
(50, 'P050', 'Bachelor of Performing & Visual Arts', 3, 60, 60);

CREATE TABLE applicants (
  applicant_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100) UNIQUE,
  dob DATE,
  phone VARCHAR(20),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO applicants (first_name, last_name, email, dob, phone) VALUES
('Aarav', 'Sharma', 'aarav.sharma01@mail.com', '2003-04-12', '9876100001'),
('Vivaan', 'Verma', 'vivaan.verma02@mail.com', '2002-11-23', '9876100002'),
('Aditya', 'Singh', 'aditya.singh03@mail.com', '2004-01-19', '9876100003'),
('Kunal', 'Mehra', 'kunal.mehra04@mail.com', '2001-06-05', '9876100004'),
('Raghav', 'Saxena', 'raghav.saxena05@mail.com', '2005-09-15', '9876100005'),

('Ishan', 'Agarwal', 'ishan.agarwal06@mail.com', '2003-12-25', '9876100006'),
('Krish', 'Kapoor', 'krish.kapoor07@mail.com', '2000-02-14', '9876100007'),
('Arjun', 'Chopra', 'arjun.chopra08@mail.com', '2004-08-09', '9876100008'),
('Sarthak', 'Malhotra', 'sarthak.malhotra09@mail.com', '2002-10-21', '9876100009'),
('Lakshay', 'Rana', 'lakshay.rana10@mail.com', '2001-03-29', '9876100010'),

('Yuvraj', 'Kohli', 'yuvraj.kohli11@mail.com', '2003-05-17', '9876100011'),
('Manav', 'Bhatia', 'manav.bhatia12@mail.com', '2005-07-08', '9876100012'),
('Rohan', 'Gill', 'rohan.gill13@mail.com', '2004-09-30', '9876100013'),
('Dev', 'Chatterjee', 'dev.chatterjee14@mail.com', '2002-01-07', '9876100014'),
('Siddharth', 'Mukherjee', 'siddharth.mukherjee15@mail.com', '2003-11-12', '9876100015'),

('Kabir', 'Banerjee', 'kabir.banerjee16@mail.com', '2001-06-22', '9876100016'),
('Aryan', 'Ghosh', 'aryan.ghosh17@mail.com', '2002-04-04', '9876100017'),
('Veer', 'Sen', 'veer.sen18@mail.com', '2004-12-02', '9876100018'),
('Shaurya', 'Roy', 'shaurya.roy19@mail.com', '2005-02-26', '9876100019'),
('Atharv', 'Dey', 'atharv.dey20@mail.com', '2003-07-16', '9876100020'),

('Harsh', 'Das', 'harsh.das21@mail.com', '2002-09-11', '9876100021'),
('Param', 'Bhattacharya', 'param.bhattacharya22@mail.com', '2001-05-28', '9876100022'),
('Ayaan', 'Chaudhary', 'ayaan.chaudhary23@mail.com', '2005-10-19', '9876100023'),
('Reyansh', 'Yadav', 'reyansh.yadav24@mail.com', '2004-03-03', '9876100024'),
('Madhav', 'Tripathi', 'madhav.tripathi25@mail.com', '2003-08-27', '9876100025'),

('Tanmay', 'Tiwari', 'tanmay.tiwari26@mail.com', '2002-11-29', '9876100026'),
('Ansh', 'Mishra', 'ansh.mishra27@mail.com', '2000-01-18', '9876100027'),
('Ritvik', 'Pandey', 'ritvik.pandey28@mail.com', '2001-07-07', '9876100028'),
('Naman', 'Shukla', 'naman.shukla29@mail.com', '2003-02-12', '9876100029'),
('Tanish', 'Dwivedi', 'tanish.dwivedi30@mail.com', '2005-05-01', '9876100030'),

('Dhruv', 'Jain', 'dhruv.jain31@mail.com', '2004-09-14', '9876100031'),
('Om', 'Khanna', 'om.khanna32@mail.com', '2003-10-22', '9876100032'),
('Ayush', 'Sood', 'ayush.sood33@mail.com', '2001-03-09', '9876100033'),
('Samar', 'Grover', 'samar.grover34@mail.com', '2000-12-17', '9876100034'),
('Tarun', 'Anand', 'tarun.anand35@mail.com', '2002-02-05', '9876100035'),

('Mohit', 'Puri', 'mohit.puri36@mail.com', '2003-04-30', '9876100036'),
('Nikhil', 'Sachdeva', 'nikhil.sachdeva37@mail.com', '2000-08-15', '9876100037'),
('Arnav', 'Khatri', 'arnav.khatri38@mail.com', '2001-06-18', '9876100038'),
('Jatin', 'Bakshi', 'jatin.bakshi39@mail.com', '2005-07-26', '9876100039'),
('Keshav', 'Mahajan', 'keshav.mahajan40@mail.com', '2004-11-03', '9876100040'),

('Virat', 'Panchal', 'virat.panchal41@mail.com', '2002-06-11', '9876100041'),
('Aarush', 'Talwar', 'aarush.talwar42@mail.com', '2005-09-09', '9876100042'),
('Hriday', 'Bajaj', 'hriday.bajaj43@mail.com', '2003-01-23', '9876100043'),
('Yash', 'Rawat', 'yash.rawat44@mail.com', '2004-10-05', '9876100044'),
('Shaurav', 'Bhatti', 'shaurav.bhatti45@mail.com', '2001-05-08', '9876100045'),

('Rudra', 'Negi', 'rudra.negi46@mail.com', '2002-12-14', '9876100046'),
('Jai', 'Thakur', 'jai.thakur47@mail.com', '2003-03-21', '9876100047'),
('Aryav', 'Pathak', 'aryav.pathak48@mail.com', '2004-08-28', '9876100048'),
('Kabir', 'Solanki', 'kabir.solanki49@mail.com', '2001-04-06', '9876100049'),
('Rehan', 'Gupta', 'rehan.gupta50@mail.com', '2003-09-01', '9876100050');

CREATE TABLE entrance_exams (
  exam_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(80) NOT NULL,
  exam_date DATE NOT NULL
);

INSERT INTO entrance_exams (name, exam_date) VALUES
('CUET UG 2024', '2024-05-15'),
('JEE Main Session 1', '2024-01-31'),
('JEE Main Session 2', '2024-04-04'),
('State CET Engineering', '2024-06-12'),
('CUET PG 2024', '2024-03-20'),

('GATE 2024', '2024-02-04'),
('BITSAT 2024 Session 1', '2024-05-22'),
('BITSAT 2024 Session 2', '2024-06-27'),
('VITEEE 2024', '2024-04-19'),
('SRMJEEE 2024', '2024-04-28'),

('AMUEEE 2024', '2024-06-07'),
('MAH MCA CET', '2024-03-26'),
('UPSEE Entrance Test', '2024-05-07'),
('WBJEE 2024', '2024-04-29'),
('Kar CET 2024', '2024-05-13'),

('COMEDK UGET 2024', '2024-05-12'),
('CLAT 2024', '2023-12-03'),
('NIFT Entrance Exam', '2024-02-05'),
('NID Design Aptitude Test', '2024-01-07'),
('Hotel Management NCHM JEE', '2024-05-11'),

('Agriculture ICAR AIEEA', '2024-06-05'),
('AIIMS Nursing Entrance', '2024-06-18'),
('Pharmacy GPAT 2024', '2024-06-08'),
('Law LSAT India 2024', '2024-01-21'),
('IGNOU B.Ed Entrance', '2024-01-07'),

('Teacher CTET Jan 2024', '2024-01-21'),
('Teacher CTET July 2024', '2024-07-07'),
('JECA MCA Entrance', '2024-07-14'),
('Polytechnic JEXPO', '2024-05-17'),
('Diploma VOCLET', '2024-06-03'),

('Marine Engineering IMU CET', '2024-06-06'),
('Aerospace IIST Admission Test', '2024-06-15'),
('Textile Engineering TANCET', '2024-03-09'),
('Industrial Engineering PGECET', '2024-05-31'),
('Nanotech NST 2024', '2024-02-22'),

('Renewable Energy RTET', '2024-04-18'),
('Urban Planning CEPT Entrance', '2024-02-29'),
('Fine Arts FAAE 2024', '2024-05-20'),
('Mass Comm ACJ Exam', '2024-04-23'),
('Design UCEED 2024', '2024-01-20'),

('Performing Arts Entrance Test', '2024-03-05'),
('Library Science MLIS Test', '2024-06-12'),
('Food Technology FACT 2024', '2024-04-16'),
('Data Science DSAT 2024', '2024-05-27'),
('Cyber Security NCSE 2024', '2024-06-22'),

('AI Entrance Test (AIE)', '2024-07-02'),
('Robotics Technical Aptitude', '2024-06-19'),
('Agriculture KAU Entrance', '2024-06-10'),
('Statistics Entrance Test', '2024-03-14'),
('Psychology Aptitude Test', '2024-05-09');

CREATE TABLE exam_scores (
  score_id INT AUTO_INCREMENT PRIMARY KEY,
  applicant_id INT NOT NULL,
  exam_id INT NOT NULL,
  score DECIMAL(5,2) NOT NULL,
  FOREIGN KEY (applicant_id) REFERENCES applicants(applicant_id) ON DELETE CASCADE,
  FOREIGN KEY (exam_id) REFERENCES entrance_exams(exam_id) ON DELETE CASCADE,
  UNIQUE KEY ap_exam_unique (applicant_id, exam_id)
);

INSERT INTO exam_scores (applicant_id, exam_id, score) VALUES
(1, 1, 88.50),
(2, 2, 74.20),
(3, 3, 92.10),
(4, 4, 81.75),
(5, 5, 69.40),

(6, 6, 95.30),
(7, 7, 78.60),
(8, 8, 85.20),
(9, 9, 90.10),
(10, 10, 71.80),

(11, 11, 82.40),
(12, 12, 76.95),
(13, 13, 88.70),
(14, 14, 67.90),
(15, 15, 94.50),

(16, 16, 73.25),
(17, 17, 91.30),
(18, 18, 89.15),
(19, 19, 70.60),
(20, 20, 97.20),

(21, 21, 79.75),
(22, 22, 58.40),
(23, 23, 83.90),
(24, 24, 92.85),
(25, 25, 66.70),

(26, 26, 87.35),
(27, 27, 77.10),
(28, 28, 90.55),
(29, 29, 61.20),
(30, 30, 93.45),

(31, 31, 84.80),
(32, 32, 96.25),
(33, 33, 75.15),
(34, 34, 88.95),
(35, 35, 72.60),

(36, 36, 79.10),
(37, 37, 94.85),
(38, 38, 67.40),
(39, 39, 82.75),
(40, 40, 91.90),

(41, 41, 78.50),
(42, 42, 87.60),
(43, 43, 93.25),
(44, 44, 65.80),
(45, 45, 89.45),

(46, 46, 73.90),
(47, 47, 97.80),
(48, 48, 92.55),
(49, 49, 88.10),
(50, 50, 95.70);

CREATE TABLE applications (
  application_id INT AUTO_INCREMENT PRIMARY KEY,
  applicant_id INT NOT NULL,
  program_id INT NOT NULL,
  applied_on DATE NOT NULL,
  status ENUM('APPLIED','SHORTLISTED','ADMITTED','REJECTED') DEFAULT 'APPLIED',
  CONSTRAINT fk_applicant FOREIGN KEY (applicant_id) REFERENCES applicants(applicant_id) ON DELETE CASCADE,
  CONSTRAINT fk_program FOREIGN KEY (program_id) REFERENCES programs(program_id) ON DELETE CASCADE,
  UNIQUE KEY unique_app (applicant_id, program_id)
);

INSERT INTO applications (applicant_id, program_id, applied_on, status) VALUES
(1, 1, '2024-02-15', 'APPLIED'),
(2, 2, '2024-02-16', 'APPLIED'),
(3, 3, '2024-02-17', 'SHORTLISTED'),
(4, 4, '2024-02-18', 'APPLIED'),
(5, 5, '2024-02-19', 'APPLIED'),

(6, 6, '2024-02-20', 'SHORTLISTED'),
(7, 7, '2024-02-21', 'APPLIED'),
(8, 8, '2024-02-22', 'APPLIED'),
(9, 9, '2024-02-23', 'SHORTLISTED'),
(10, 10, '2024-02-24', 'APPLIED'),

(11, 11, '2024-03-01', 'APPLIED'),
(12, 12, '2024-03-02', 'APPLIED'),
(13, 13, '2024-03-03', 'APPLIED'),
(14, 14, '2024-03-04', 'APPLIED'),
(15, 15, '2024-03-05', 'SHORTLISTED'),

(16, 16, '2024-03-06', 'APPLIED'),
(17, 17, '2024-03-07', 'APPLIED'),
(18, 18, '2024-03-08', 'SHORTLISTED'),
(19, 19, '2024-03-09', 'APPLIED'),
(20, 20, '2024-03-10', 'APPLIED'),

(21, 21, '2024-03-11', 'APPLIED'),
(22, 22, '2024-03-12', 'SHORTLISTED'),
(23, 23, '2024-03-13', 'APPLIED'),
(24, 24, '2024-03-14', 'APPLIED'),
(25, 25, '2024-03-15', 'APPLIED'),

(26, 26, '2024-03-16', 'SHORTLISTED'),
(27, 27, '2024-03-17', 'APPLIED'),
(28, 28, '2024-03-18', 'APPLIED'),
(29, 29, '2024-03-19', 'APPLIED'),
(30, 30, '2024-03-20', 'SHORTLISTED'),

(31, 31, '2024-04-01', 'APPLIED'),
(32, 32, '2024-04-02', 'APPLIED'),
(33, 33, '2024-04-03', 'APPLIED'),
(34, 34, '2024-04-04', 'SHORTLISTED'),
(35, 35, '2024-04-05', 'APPLIED'),

(36, 36, '2024-04-06', 'APPLIED'),
(37, 37, '2024-04-07', 'SHORTLISTED'),
(38, 38, '2024-04-08', 'APPLIED'),
(39, 39, '2024-04-09', 'APPLIED'),
(40, 40, '2024-04-10', 'SHORTLISTED'),

(41, 41, '2024-04-11', 'APPLIED'),
(42, 42, '2024-04-12', 'APPLIED'),
(43, 43, '2024-04-13', 'APPLIED'),
(44, 44, '2024-04-14', 'APPLIED'),
(45, 45, '2024-04-15', 'APPLIED'),

(46, 46, '2024-04-16', 'SHORTLISTED'),
(47, 47, '2024-04-17', 'APPLIED'),
(48, 48, '2024-04-18', 'APPLIED'),
(49, 49, '2024-04-19', 'APPLIED'),
(50, 50, '2024-04-20', 'SHORTLISTED');

CREATE TABLE admissions (
  admission_id INT AUTO_INCREMENT PRIMARY KEY,
  application_id INT NOT NULL,
  admitted_on DATE NOT NULL,
  roll_no VARCHAR(20) UNIQUE,
  CONSTRAINT fk_application FOREIGN KEY (application_id) REFERENCES applications(application_id) ON DELETE CASCADE
);

INSERT INTO admissions (application_id, admitted_on, roll_no) VALUES
(1,  '2024-05-10', 'ROLL0001'),
(2,  '2024-05-11', 'ROLL0002'),
(3,  '2024-05-12', 'ROLL0003'),
(4,  '2024-05-13', 'ROLL0004'),
(5,  '2024-05-14', 'ROLL0005'),

(6,  '2024-05-15', 'ROLL0006'),
(7,  '2024-05-16', 'ROLL0007'),
(8,  '2024-05-17', 'ROLL0008'),
(9,  '2024-05-18', 'ROLL0009'),
(10, '2024-05-19', 'ROLL0010'),

(11, '2024-05-20', 'ROLL0011'),
(12, '2024-05-21', 'ROLL0012'),
(13, '2024-05-22', 'ROLL0013'),
(14, '2024-05-23', 'ROLL0014'),
(15, '2024-05-24', 'ROLL0015'),

(16, '2024-05-25', 'ROLL0016'),
(17, '2024-05-26', 'ROLL0017'),
(18, '2024-05-27', 'ROLL0018'),
(19, '2024-05-28', 'ROLL0019'),
(20, '2024-05-29', 'ROLL0020'),

(21, '2024-06-01', 'ROLL0021'),
(22, '2024-06-02', 'ROLL0022'),
(23, '2024-06-03', 'ROLL0023'),
(24, '2024-06-04', 'ROLL0024'),
(25, '2024-06-05', 'ROLL0025'),

(26, '2024-06-06', 'ROLL0026'),
(27, '2024-06-07', 'ROLL0027'),
(28, '2024-06-08', 'ROLL0028'),
(29, '2024-06-09', 'ROLL0029'),
(30, '2024-06-10', 'ROLL0030'),

(31, '2024-06-11', 'ROLL0031'),
(32, '2024-06-12', 'ROLL0032'),
(33, '2024-06-13', 'ROLL0033'),
(34, '2024-06-14', 'ROLL0034'),
(35, '2024-06-15', 'ROLL0035'),

(36, '2024-06-16', 'ROLL0036'),
(37, '2024-06-17', 'ROLL0037'),
(38, '2024-06-18', 'ROLL0038'),
(39, '2024-06-19', 'ROLL0039'),
(40, '2024-06-20', 'ROLL0040'),

(41, '2024-06-21', 'ROLL0041'),
(42, '2024-06-22', 'ROLL0042'),
(43, '2024-06-23', 'ROLL0043'),
(44, '2024-06-24', 'ROLL0044'),
(45, '2024-06-25', 'ROLL0045'),

(46, '2024-06-26', 'ROLL0046'),
(47, '2024-06-27', 'ROLL0047'),
(48, '2024-06-28', 'ROLL0048'),
(49, '2024-06-29', 'ROLL0049'),
(50, '2024-06-30', 'ROLL0050');

CREATE TABLE audit_logs (
  log_id INT AUTO_INCREMENT PRIMARY KEY,
  action VARCHAR(40),
  table_name VARCHAR(40),
  record_id INT,
  details TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO audit_logs (action, table_name, record_id, details, created_at) VALUES
('INSERT', 'applications', 1, 'Application created for applicant_id=1, program_id=1', '2024-02-15 10:12:01'),
('INSERT', 'applications', 2, 'Application created for applicant_id=2, program_id=2', '2024-02-16 11:00:22'),
('INSERT', 'applications', 3, 'Application created for applicant_id=3, program_id=3', '2024-02-17 09:45:33'),
('INSERT', 'applications', 4, 'Application created for applicant_id=4, program_id=4', '2024-02-18 14:10:44'),
('INSERT', 'applications', 5, 'Application created for applicant_id=5, program_id=5', '2024-02-19 13:20:55'),

('INSERT', 'applications', 6, 'Application created for applicant_id=6, program_id=6', '2024-02-20 16:25:10'),
('INSERT', 'applications', 7, 'Application created for applicant_id=7, program_id=7', '2024-02-21 09:32:14'),
('INSERT', 'applications', 8, 'Application created for applicant_id=8, program_id=8', '2024-02-22 08:17:20'),
('INSERT', 'applications', 9, 'Application created for applicant_id=9, program_id=9', '2024-02-23 11:29:31'),
('INSERT', 'applications', 10, 'Application created for applicant_id=10, program_id=10', '2024-02-24 12:45:48'),

('INSERT', 'applications', 11, 'Application created for applicant_id=11, program_id=11', '2024-03-01 09:00:02'),
('INSERT', 'applications', 12, 'Application created for applicant_id=12, program_id=12', '2024-03-02 12:30:25'),
('INSERT', 'applications', 13, 'Application created for applicant_id=13, program_id=13', '2024-03-03 13:10:11'),
('INSERT', 'applications', 14, 'Application created for applicant_id=14, program_id=14', '2024-03-04 15:18:52'),
('INSERT', 'applications', 15, 'Application created for applicant_id=15, program_id=15', '2024-03-05 10:40:40'),

('INSERT', 'applications', 16, 'Application created for applicant_id=16, program_id=16', '2024-03-06 09:22:12'),
('INSERT', 'applications', 17, 'Application created for applicant_id=17, program_id=17', '2024-03-07 11:32:44'),
('INSERT', 'applications', 18, 'Application created for applicant_id=18, program_id=18', '2024-03-08 14:50:22'),
('INSERT', 'applications', 19, 'Application created for applicant_id=19, program_id=19', '2024-03-09 13:18:30'),
('INSERT', 'applications', 20, 'Application created for applicant_id=20, program_id=20', '2024-03-10 15:07:11'),

('INSERT', 'applications', 21, 'Application created for applicant_id=21, program_id=21', '2024-03-11 16:20:44'),
('INSERT', 'applications', 22, 'Application created for applicant_id=22, program_id=22', '2024-03-12 10:14:07'),
('INSERT', 'applications', 23, 'Application created for applicant_id=23, program_id=23', '2024-03-13 09:55:55'),
('INSERT', 'applications', 24, 'Application created for applicant_id=24, program_id=24', '2024-03-14 14:26:41'),
('INSERT', 'applications', 25, 'Application created for applicant_id=25, program_id=25', '2024-03-15 11:33:58'),

('INSERT', 'applications', 26, 'Application created for applicant_id=26, program_id=26', '2024-03-16 10:21:12'),
('INSERT', 'applications', 27, 'Application created for applicant_id=27, program_id=27', '2024-03-17 12:43:50'),
('INSERT', 'applications', 28, 'Application created for applicant_id=28, program_id=28', '2024-03-18 14:22:18'),
('INSERT', 'applications', 29, 'Application created for applicant_id=29, program_id=29', '2024-03-19 13:07:30'),
('INSERT', 'applications', 30, 'Application created for applicant_id=30, program_id=30', '2024-03-20 15:16:05'),

('INSERT', 'admissions', 1, 'Student admitted via application_id=1, roll_no=ROLL0001', '2024-05-10 09:30:12'),
('INSERT', 'admissions', 2, 'Student admitted via application_id=2, roll_no=ROLL0002', '2024-05-11 10:12:22'),
('INSERT', 'admissions', 3, 'Student admitted via application_id=3, roll_no=ROLL0003', '2024-05-12 12:07:04'),
('INSERT', 'admissions', 4, 'Student admitted via application_id=4, roll_no=ROLL0004', '2024-05-13 15:19:51'),
('INSERT', 'admissions', 5, 'Student admitted via application_id=5, roll_no=ROLL0005', '2024-05-14 16:20:33'),

('INSERT', 'admissions', 6, 'Student admitted via application_id=6, roll_no=ROLL0006', '2024-05-15 11:10:05'),
('INSERT', 'admissions', 7, 'Student admitted via application_id=7, roll_no=ROLL0007', '2024-05-16 09:27:41'),
('INSERT', 'admissions', 8, 'Student admitted via application_id=8, roll_no=ROLL0008', '2024-05-17 14:50:14'),
('INSERT', 'admissions', 9, 'Student admitted via application_id=9, roll_no=ROLL0009', '2024-05-18 12:33:17'),
('INSERT', 'admissions', 10, 'Student admitted via application_id=10, roll_no=ROLL0010', '2024-05-19 10:45:29');

-- Show student name with program name
SELECT s.first_name, s.last_name, p.name
FROM applicants s
JOIN applications a ON s.applicant_id = a.applicant_id
JOIN programs p ON a.program_id = p.program_id;

-- Show department name with program name
SELECT p.name AS program, d.name AS department
FROM programs p
JOIN departments d ON p.dept_id = d.dept_id;

-- Show applicant name with their exam score
SELECT s.first_name, es.score
FROM exam_scores es
JOIN applicants s ON es.applicant_id = s.applicant_id;

-- Show admission details with student name
SELECT ad.roll_no, s.first_name, p.name
FROM admissions ad
JOIN applications a ON ad.application_id = a.application_id
JOIN applicants s ON a.applicant_id = s.applicant_id
JOIN programs p ON a.program_id = p.program_id;

-- Show program-wise applicants
SELECT p.name, s.first_name, s.last_name
FROM applications a
JOIN applicants s ON a.applicant_id = s.applicant_id
JOIN programs p ON a.program_id = p.program_id;

-- Count how many students applied to each program
SELECT program_id, COUNT(*) AS total_applications
FROM applications
GROUP BY program_id;

-- Find max score
SELECT MAX(score) FROM exam_scores;

-- Find min score
SELECT MIN(score) FROM exam_scores;

-- Find average score
SELECT AVG(score) FROM exam_scores;

-- Program with more than 20 applications
SELECT program_id, COUNT(*) 
FROM applications
GROUP BY program_id
HAVING COUNT(*) > 20;

-- Applicants who scored above average
SELECT applicant_id, score
FROM exam_scores
WHERE score > (SELECT AVG(score) FROM exam_scores);

-- Students who applied for the most popular program
SELECT * FROM applications
WHERE program_id = (
  SELECT program_id 
  FROM applications 
  GROUP BY program_id 
  ORDER BY COUNT(*) DESC 
  LIMIT 1
);

-- Programs applied by a specific applicant
SELECT program_id
FROM applications
WHERE applicant_id = (
    SELECT applicant_id 
    FROM applicants 
    WHERE email='aarav@mail.com'
);

-- Update application status
UPDATE applications SET status='APPROVED' WHERE application_id=5;

-- Change an applicant’s phone number
UPDATE applicants SET phone='9876500000' WHERE applicant_id=1;

-- Delete an application
DELETE FROM applications WHERE application_id=10;

-- Delete a student (if allowed)
DELETE FROM applicants WHERE applicant_id=12;

-- Applications submitted in March 2024
SELECT * FROM applications
WHERE MONTH(applied_on) = 3 AND YEAR(applied_on) = 2024;

-- Admissions done after June 2024
SELECT * FROM admissions
WHERE admitted_on > '2024-06-01';

-- Sort applicants alphabetically
SELECT * FROM applicants ORDER BY first_name ASC;

-- Sort scores from highest to lowest
SELECT * FROM exam_scores ORDER BY score DESC;

-- Program list sorted by duration
SELECT * FROM programs ORDER BY duration_years;

-- Applicants with Gmail accounts
SELECT * FROM applicants WHERE email LIKE '%gmail.com';

-- Find applicants who have been admitted
SELECT s.first_name, p.name
FROM admissions ad
JOIN applications a ON ad.application_id = a.application_id
JOIN applicants s ON a.applicant_id = s.applicant_id
JOIN programs p ON a.program_id = p.program_id;

-- Programs in the "Computer Science" department
SELECT p.name 
FROM programs p
JOIN departments d ON p.dept_id = d.dept_id
WHERE d.name = 'Computer Science';

-- Show applicant details with score and program
SELECT s.first_name, s.last_name, es.score, p.name
FROM exam_scores es
JOIN applicants s ON es.applicant_id = s.applicant_id
JOIN applications a ON s.applicant_id = a.applicant_id
JOIN programs p ON a.program_id = p.program_id;

-- Highest scoring student with name
SELECT s.first_name, s.last_name, es.score
FROM exam_scores es
JOIN applicants s ON es.applicant_id = s.applicant_id
ORDER BY es.score DESC LIMIT 1;

-- List of admitted students with email
SELECT s.first_name, s.email, ad.roll_no
FROM admissions ad
JOIN applications a ON ad.application_id = a.application_id
JOIN applicants s ON a.applicant_id = s.applicant_id;

-- Department-wise program count
SELECT dept_id, COUNT(*) AS programs_count
FROM programs
GROUP BY dept_id;

-- Applicants who applied multiple times
SELECT applicant_id, COUNT(*)
FROM applications
GROUP BY applicant_id
HAVING COUNT(*) > 1;

-- Top 5 scorers
SELECT * FROM exam_scores ORDER BY score DESC LIMIT 5;

-- Q1. Create a function to calculate age from DOB
DELIMITER $$
CREATE FUNCTION calc_age(d DATE)
RETURNS INT
DETERMINISTIC
BEGIN
  RETURN TIMESTAMPDIFF(YEAR, d, CURDATE());
END$$
DELIMITER ;
SELECT first_name, calc_age(dob) AS age FROM applicants;

-- Q2. Create a function to check if score is PASS or FAIL.
DELIMITER $$
CREATE FUNCTION check_pass(score INT)
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
  RETURN IF(score >= 40, 'PASS', 'FAIL');
END$$
DELIMITER ;
SELECT applicant_id, score, check_pass(score) FROM exam_scores;

-- Q3. Create a function to calculate total years left to complete course.
DELIMITER $$
CREATE FUNCTION years_left(start_year INT, duration INT)
RETURNS INT
DETERMINISTIC
BEGIN
  RETURN duration - (YEAR(CURDATE()) - start_year);
END$$
DELIMITER ;
SELECT years_left(2023, 3) AS remaining_years;

-- Q4. Create a simple procedure to insert a new applicant.
DELIMITER $$
CREATE PROCEDURE add_applicant(
  IN p_first VARCHAR(50),
  IN p_last VARCHAR(50),
  IN p_email VARCHAR(100),
  IN p_dob DATE,
  IN p_phone VARCHAR(20)
)
BEGIN
  INSERT INTO applicants(first_name, last_name, email, dob, phone)
  VALUES(p_first, p_last, p_email, p_dob, p_phone);
END$$
DELIMITER ;
CALL add_applicant('Aarav','Sharma','aarav@mail.com','2003-05-12','9876543210');

-- Q5. Create a procedure to update application status.
DELIMITER $$
CREATE PROCEDURE change_status(
  IN p_app_id INT,
  IN p_status VARCHAR(20)
)
BEGIN
  UPDATE applications 
  SET status = p_status 
  WHERE application_id = p_app_id;
END$$
DELIMITER ;
CALL change_status(5, 'APPROVED');

-- Q6. Create a procedure to count how many applicants applied to a program.
DELIMITER $$
CREATE PROCEDURE count_applications(IN prog_id INT)
BEGIN
  SELECT COUNT(*) AS total_applications
  FROM applications
  WHERE program_id = prog_id;
END$$
DELIMITER ;
CALL count_applications(1);

-- Q7. Create a procedure to show top N scorers.
DELIMITER $$
CREATE PROCEDURE top_scorers(IN limit_no INT)
BEGIN
  SELECT applicant_id, score
  FROM exam_scores
  ORDER BY score DESC
  LIMIT limit_no;
END$$
DELIMITER ;
CALL top_scorers(5);

-- Q8. Create a procedure to show applicants with age > given age
DELIMITER $$
CREATE PROCEDURE applicants_above_age(IN min_age INT)
BEGIN
  SELECT applicant_id, first_name, calc_age(dob) AS age
  FROM applicants
  HAVING age > min_age;
END$$
DELIMITER ;
CALL applicants_above_age(20);

-- Q9. Create a procedure that displays applicant names and their age (using calc_age).
DELIMITER $$
CREATE PROCEDURE show_applicant_age()
BEGIN
  SELECT first_name, last_name, calc_age(dob) AS age
  FROM applicants;
END$$
DELIMITER ;
CALL show_applicant_age();

-- Q10. Procedure to insert an application ONLY if applicant age ≥ 18.
DELIMITER $$
CREATE PROCEDURE apply_if_adult(
  IN a_id INT,
  IN prog_id INT
)
BEGIN
  IF calc_age((SELECT dob FROM applicants WHERE applicant_id=a_id)) >= 18 THEN
    INSERT INTO applications(applicant_id, program_id, applied_on, status)
    VALUES(a_id, prog_id, CURDATE(), 'APPLIED');
  ELSE
    SELECT 'Applicant is under 18' AS Message;
  END IF;
END$$
DELIMITER ;
