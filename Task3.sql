CREATE DATABASE CompanyProjects;
USE CompanyProjects;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    head_of_department VARCHAR(50),
    location VARCHAR(100),
    established_year INT,
    contact_email VARCHAR(100),
    phone_number VARCHAR(20),
    total_employees INT,
    budget DECIMAL(12,2),
    description VARCHAR(50)
);


CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    department_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    hire_date DATE,
    job_title VARCHAR(50),
    salary DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);


CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    department_id INT,
    employee_id INT,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget DECIMAL(12,2),
    client_name VARCHAR(100),
    status VARCHAR(30),
    remarks VARCHAR(40),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);


CREATE TABLE Tasks (
    task_id INT PRIMARY KEY,
    department_id INT,
    employee_id INT,
    project_id INT,
    task_name VARCHAR(100),
    due_date DATE,
    completed BOOLEAN,
    hours_allocated INT,
    priority_level VARCHAR(40),
    assigned_by VARCHAR(50),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);


CREATE TABLE TaskLogs (
    log_id INT PRIMARY KEY,
    department_id INT,
    employee_id INT,
    project_id INT,
    task_id INT,
    log_date DATE,
    hours_spent DECIMAL(5,2),
    progress_percentage DECIMAL(5,2),
    comments VARCHAR(40),
    approved BOOLEAN,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id),
    FOREIGN KEY (task_id) REFERENCES Tasks(task_id)
);



INSERT INTO Departments VALUES
(1, 'Department_1', 'Head_1', 'Location_1', 2001, 'dept1@company.com', '9876543201', 44, 193841.00, 'Department description 1'),
(2, 'Department_2', 'Head_2', 'Location_2', 2002, 'dept2@company.com', '9876543202', 81, 69194.00, 'Department description 2'),
(3, 'Department_3', 'Head_3', 'Location_3', 2003, 'dept3@company.com', '9876543203', 87, 63997.00, 'Department description 3'),
(4, 'Department_4', 'Head_4', 'Location_4', 2004, 'dept4@company.com', '9876543204', 70, 84064.00, 'Department description 4'),
(5, 'Department_5', 'Head_5', 'Location_5', 2005, 'dept5@company.com', '9876543205', 64, 88382.00, 'Department description 5'),
(6, 'Department_6', 'Head_6', 'Location_6', 2006, 'dept6@company.com', '9876543206', 85, 150145.00, 'Department description 6'),
(7, 'Department_7', 'Head_7', 'Location_7', 2007, 'dept7@company.com', '9876543207', 33, 83649.00, 'Department description 7'),
(8, 'Department_8', 'Head_8', 'Location_8', 2008, 'dept8@company.com', '9876543208', 75, 164015.00, 'Department description 8'),
(9, 'Department_9', 'Head_9', 'Location_9', 2009, 'dept9@company.com', '9876543209', 15, 117356.00, 'Department description 9'),
(10, 'Department_10', 'Head_10', 'Location_10', 2010, 'dept10@company.com', '9876543210', 46, 157747.00, 'Department description 10'),
(11, 'Department_11', 'Head_11', 'Location_11', 2011, 'dept11@company.com', '9876543211', 88, 124692.00, 'Department description 11'),
(12, 'Department_12', 'Head_12', 'Location_12', 2012, 'dept12@company.com', '9876543212', 70, 181716.00, 'Department description 12'),
(13, 'Department_13', 'Head_13', 'Location_13', 2013, 'dept13@company.com', '9876543213', 53, 147638.00, 'Department description 13'),
(14, 'Department_14', 'Head_14', 'Location_14', 2014, 'dept14@company.com', '9876543214', 77, 168078.00, 'Department description 14'),
(15, 'Department_15', 'Head_15', 'Location_15', 2015, 'dept15@company.com', '9876543215', 95, 178398.00, 'Department description 15'),
(16, 'Department_16', 'Head_16', 'Location_16', 2016, 'dept16@company.com', '9876543216', 59, 161256.00, 'Department description 16'),
(17, 'Department_17', 'Head_17', 'Location_17', 2017, 'dept17@company.com', '9876543217', 36, 139948.00, 'Department description 17'),
(18, 'Department_18', 'Head_18', 'Location_18', 2018, 'dept18@company.com', '9876543218', 40, 123256.00, 'Department description 18'),
(19, 'Department_19', 'Head_19', 'Location_19', 2019, 'dept19@company.com', '9876543219', 68, 149510.00, 'Department description 19'),
(20, 'Department_20', 'Head_20', 'Location_20', 2020, 'dept20@company.com', '9876543220', 21, 133984.00, 'Department description 20'),
(21, 'Department_21', 'Head_21', 'Location_21', 2001, 'dept21@company.com', '9876543221', 37, 107225.00, 'Department description 21'),
(22, 'Department_22', 'Head_22', 'Location_22', 2002, 'dept22@company.com', '9876543222', 11, 198470.00, 'Department description 22'),
(23, 'Department_23', 'Head_23', 'Location_23', 2003, 'dept23@company.com', '9876543223', 62, 139162.00, 'Department description 23'),
(24, 'Department_24', 'Head_24', 'Location_24', 2004, 'dept24@company.com', '9876543224', 30, 101139.00, 'Department description 24'),
(25, 'Department_25', 'Head_25', 'Location_25', 2005, 'dept25@company.com', '9876543225', 42, 147742.00, 'Department description 25'),
(26, 'Department_26', 'Head_26', 'Location_26', 2006, 'dept26@company.com', '9876543226', 26, 110216.00, 'Department description 26'),
(27, 'Department_27', 'Head_27', 'Location_27', 2007, 'dept27@company.com', '9876543227', 89, 128518.00, 'Department description 27'),
(28, 'Department_28', 'Head_28', 'Location_28', 2008, 'dept28@company.com', '9876543228', 66, 130778.00, 'Department description 28'),
(29, 'Department_29', 'Head_29', 'Location_29', 2009, 'dept29@company.com', '9876543229', 45, 129013.00, 'Department description 29'),
(30, 'Department_30', 'Head_30', 'Location_30', 2010, 'dept30@company.com', '9876543230', 92, 106067.00, 'Department description 30');
 
 
 
 
 
 
 INSERT INTO Employees VALUES
(1, 1, 'First_1', 'Last_1', 'employee1@company.com', '9876500001', '2020-01-02', 'Developer', 65284.00, 'Active'),
(2, 2, 'First_2', 'Last_2', 'employee2@company.com', '9876500002', '2020-01-03', 'Developer', 55872.00, 'Active'),
(3, 3, 'First_3', 'Last_3', 'employee3@company.com', '9876500003', '2020-01-04', 'Developer', 75368.00, 'Active'),
(4, 4, 'First_4', 'Last_4', 'employee4@company.com', '9876500004', '2020-01-05', 'Developer', 61840.00, 'Active'),
(5, 5, 'First_5', 'Last_5', 'employee5@company.com', '9876500005', '2020-01-06', 'Developer', 78936.00, 'Active'),
(6, 6, 'First_6', 'Last_6', 'employee6@company.com', '9876500006', '2020-01-07', 'Developer', 50716.00, 'Active'),
(7, 7, 'First_7', 'Last_7', 'employee7@company.com', '9876500007', '2020-01-08', 'Developer', 73550.00, 'Active'),
(8, 8, 'First_8', 'Last_8', 'employee8@company.com', '9876500008', '2020-01-09', 'Developer', 48833.00, 'Active'),
(9, 9, 'First_9', 'Last_9', 'employee9@company.com', '9876500009', '2020-01-10', 'Developer', 52057.00, 'Active'),
(10, 10, 'First_10', 'Last_10', 'employee10@company.com', '9876500010', '2020-01-11', 'Developer', 66722.00, 'Active'),
(11, 11, 'First_11', 'Last_11', 'employee11@company.com', '9876500011', '2020-01-12', 'Developer', 40855.00, 'Active'),
(12, 12, 'First_12', 'Last_12', 'employee12@company.com', '9876500012', '2020-01-13', 'Developer', 32415.00, 'Active'),
(13, 13, 'First_13', 'Last_13', 'employee13@company.com', '9876500013', '2020-01-14', 'Developer', 71594.00, 'Active'),
(14, 14, 'First_14', 'Last_14', 'employee14@company.com', '9876500014', '2020-01-15', 'Developer', 54467.00, 'Active'),
(15, 15, 'First_15', 'Last_15', 'employee15@company.com', '9876500015', '2020-01-16', 'Developer', 61842.00, 'Active'),
(16, 16, 'First_16', 'Last_16', 'employee16@company.com', '9876500016', '2020-01-17', 'Developer', 75392.00, 'Active'),
(17, 17, 'First_17', 'Last_17', 'employee17@company.com', '9876500017', '2020-01-18', 'Developer', 33098.00, 'Active'),
(18, 18, 'First_18', 'Last_18', 'employee18@company.com', '9876500018', '2020-01-19', 'Developer', 47142.00, 'Active'),
(19, 19, 'First_19', 'Last_19', 'employee19@company.com', '9876500019', '2020-01-20', 'Developer', 78849.00, 'Active'),
(20, 20, 'First_20', 'Last_20', 'employee20@company.com', '9876500020', '2020-01-21', 'Developer', 62577.00, 'Active'),
(21, 21, 'First_21', 'Last_21', 'employee21@company.com', '9876500021', '2020-01-22', 'Developer', 58153.00, 'Active'),
(22, 22, 'First_22', 'Last_22', 'employee22@company.com', '9876500022', '2020-01-23', 'Developer', 67945.00, 'Active'),
(23, 23, 'First_23', 'Last_23', 'employee23@company.com', '9876500023', '2020-01-24', 'Developer', 39187.00, 'Active'),
(24, 24, 'First_24', 'Last_24', 'employee24@company.com', '9876500024', '2020-01-25', 'Developer', 42406.00, 'Active'),
(25, 25, 'First_25', 'Last_25', 'employee25@company.com', '9876500025', '2020-01-26', 'Developer', 68642.00, 'Active'),
(26, 26, 'First_26', 'Last_26', 'employee26@company.com', '9876500026', '2020-01-27', 'Developer', 37960.00, 'Active'),
(27, 27, 'First_27', 'Last_27', 'employee27@company.com', '9876500027', '2020-01-28', 'Developer', 42310.00, 'Active'),
(28, 28, 'First_28', 'Last_28', 'employee28@company.com', '9876500028', '2020-01-29', 'Developer', 40451.00, 'Active'),
(29, 29, 'First_29', 'Last_29', 'employee29@company.com', '9876500029', '2020-01-30', 'Developer', 40779.00, 'Active'),
(30, 30, 'First_30', 'Last_30', 'employee30@company.com', '9876500030', '2020-01-31', 'Developer', 35219.00, 'Active');

INSERT INTO Projects VALUES
(1, 1, 1, 'Project Alpha', '2024-01-01', '2024-06-01', 200000.00, 'Client A', 'In Progress', 'N/A'),
(2, 2, 2, 'Project Beta', '2024-02-01', '2024-07-01', 150000.00, 'Client B', 'In Progress', 'N/A'),
(3, 3, 3, 'Project Gamma', '2024-03-01', '2024-08-01', 180000.00, 'Client C', 'In Progress', 'N/A'),
(4, 4, 4, 'Project Delta', '2024-04-01', '2024-09-01', 220000.00, 'Client D', 'In Progress', 'N/A'),
(5, 5, 5, 'Project Epsilon', '2024-05-01', '2024-10-01', 175000.00, 'Client E', 'Planned', 'N/A'),
(6, 6, 6, 'Project Zeta', '2024-06-01', '2024-11-01', 195000.00, 'Client F', 'Planned', 'N/A'),
(7, 7, 7, 'Project Eta', '2024-07-01', '2024-12-01', 210000.00, 'Client G', 'In Progress', 'N/A'),
(8, 8, 8, 'Project Theta', '2024-08-01', '2025-01-01', 230000.00, 'Client H', 'Completed', 'N/A'),
(9, 9, 9, 'Project Iota', '2024-09-01', '2025-02-01', 170000.00, 'Client I', 'Completed', 'N/A'),
(10, 10, 10, 'Project Kappa', '2024-10-01', '2025-03-01', 190000.00, 'Client J', 'In Progress', 'N/A'),
(11, 11, 11, 'Project Lambda', '2024-11-01', '2025-04-01', 240000.00, 'Client K', 'In Progress', 'N/A'),
(12, 12, 12, 'Project Mu', '2024-12-01', '2025-05-01', 260000.00, 'Client L', 'Planned', 'N/A'),
(13, 13, 13, 'Project Nu', '2025-01-01', '2025-06-01', 205000.00, 'Client M', 'Planned', 'N/A'),
(14, 14, 14, 'Project Xi', '2025-02-01', '2025-07-01', 215000.00, 'Client N', 'Planned', 'N/A'),
(15, 15, 15, 'Project Omicron', '2025-03-01', '2025-08-01', 225000.00, 'Client O', 'In Progress', 'N/A'),
(16, 16, 16, 'Project Pi', '2025-04-01', '2025-09-01', 235000.00, 'Client P', 'Planned', 'N/A'),
(17, 17, 17, 'Project Rho', '2025-05-01', '2025-10-01', 245000.00, 'Client Q', 'Planned', 'N/A'),
(18, 18, 18, 'Project Sigma', '2025-06-01', '2025-11-01', 255000.00, 'Client R', 'Planned', 'N/A'),
(19, 19, 19, 'Project Tau', '2025-07-01', '2025-12-01', 265000.00, 'Client S', 'In Progress', 'N/A'),
(20, 20, 20, 'Project Upsilon', '2025-08-01', '2026-01-01', 275000.00, 'Client T', 'Completed', 'N/A'),
(21, 21, 21, 'Project Phi', '2025-09-01', '2026-02-01', 285000.00, 'Client U', 'In Progress', 'N/A'),
(22, 22, 22, 'Project Chi', '2025-10-01', '2026-03-01', 295000.00, 'Client V', 'In Progress', 'N/A'),
(23, 23, 23, 'Project Psi', '2025-11-01', '2026-04-01', 305000.00, 'Client W', 'Planned', 'N/A'),
(24, 24, 24, 'Project Omega', '2025-12-01', '2026-05-01', 315000.00, 'Client X', 'In Progress', 'N/A'),
(25, 25, 25, 'Project Zenith', '2026-01-01', '2026-06-01', 325000.00, 'Client Y', 'Completed', 'N/A'),
(26, 26, 26, 'Project Aurora', '2026-02-01', '2026-07-01', 335000.00, 'Client Z', 'In Progress', 'N/A'),
(27, 27, 27, 'Project Horizon', '2026-03-01', '2026-08-01', 345000.00, 'Client AA', 'Planned', 'N/A'),
(28, 28, 28, 'Project Nova', '2026-04-01', '2026-09-01', 355000.00, 'Client AB', 'In Progress', 'N/A'),
(29, 29, 29, 'Project Eclipse', '2026-05-01', '2026-10-01', 365000.00, 'Client AC', 'Completed', 'N/A'),
(30, 30, 30, 'Project Orion', '2026-06-01', '2026-11-01', 375000.00, 'Client AD', 'Planned', 'N/A');

INSERT INTO Tasks (
    task_id, department_id, employee_id, project_id, task_name, due_date, completed, hours_allocated, priority_level, assigned_by
) VALUES
(1, 1, 1, 1, 'Design UI', '2024-01-10', TRUE, 12, 'High', 'Manager A'),
(2, 2, 2, 2, 'Write API', '2024-01-15', FALSE, 18, 'Medium', 'Manager B'),
(3, 3, 3, 3, 'Database Setup', '2024-01-20', TRUE, 22, 'High', 'Manager C'),
(4, 4, 4, 4, 'Login Module', '2024-01-18', FALSE, 14, 'High', 'Manager D'),
(5, 5, 5, 5, 'Testing', '2024-01-25', FALSE, 9, 'Low', 'Manager E'),
(6, 6, 6, 6, 'Frontend Setup', '2024-01-14', TRUE, 6, 'Low', 'Manager F'),
(7, 7, 7, 7, 'Backend Logic', '2024-01-22', FALSE, 18, 'Medium', 'Manager G'),
(8, 8, 8, 8, 'Email Service', '2024-01-16', TRUE, 11, 'Medium', 'Manager H'),
(9, 9, 9, 9, 'PDF Export', '2024-01-19', FALSE, 13, 'Medium', 'Manager I'),
(10, 10, 10, 10, 'Performance Test', '2024-01-20', FALSE, 10, 'Low', 'Manager J'),
(11, 11, 11, 11, 'UI Polish', '2024-01-21', TRUE, 8, 'Low', 'Manager K'),
(12, 12, 12, 12, 'Scheduler', '2024-01-23', FALSE, 12, 'Medium', 'Manager L'),
(13, 13, 13, 13, 'Documentation', '2024-01-24', TRUE, 8, 'Low', 'Manager M'),
(14, 14, 14, 14, 'Deployment', '2024-01-25', FALSE, 11, 'Medium', 'Manager N'),
(15, 15, 15, 15, 'Bug Fixes', '2024-01-26', FALSE, 9, 'Medium', 'Manager O'),
(16, 16, 16, 16, 'Mobile UI', '2024-01-27', FALSE, 12, 'Medium', 'Manager P'),
(17, 17, 17, 17, 'Chatbot', '2024-01-28', FALSE, 14, 'High', 'Manager Q'),
(18, 18, 18, 18, 'Analytics', '2024-01-29', TRUE, 12, 'High', 'Manager R'),
(19, 19, 19, 19, 'Language Support', '2024-01-30', FALSE, 14, 'Medium', 'Manager S'),
(20, 20, 20, 20, 'SEO', '2024-01-31', TRUE, 10, 'Low', 'Manager T'),
(21, 21, 21, 21, 'Feedback Form', '2024-02-01', TRUE, 9, 'Low', 'Manager U'),
(22, 22, 22, 22, 'Audit Log', '2024-02-02', FALSE, 15, 'High', 'Manager V'),
(23, 23, 23, 23, 'Map Integration', '2024-02-03', FALSE, 10, 'Medium', 'Manager W'),
(24, 24, 24, 24, 'SMS Gateway', '2024-02-04', TRUE, 13, 'Medium', 'Manager X'),
(25, 25, 25, 25, 'Admin Panel', '2024-02-05', FALSE, 17, 'High', 'Manager Y'),
(26, 26, 26, 26, 'PDF Report', '2024-02-06', TRUE, 14, 'High', 'Manager Z'),
(27, 27, 27, 27, 'Notifications', '2024-02-07', FALSE, 12, 'Medium', 'Manager AA'),
(28, 28, 28, 28, 'Error Tracking', '2024-02-08', FALSE, 9, 'Low', 'Manager BB'),
(29, 29, 29, 29, 'CI/CD', '2024-02-09', FALSE, 16, 'High', 'Manager CC'),
(30, 30, 30, 30, 'Live Chat', '2024-02-10', FALSE, 11, 'Medium', 'Manager DD');


INSERT INTO TaskLogs VALUES
(1, 1, 1, 1, 1, '2024-01-04', 3.00, 100.00, 'Initial layout completed successfully.', TRUE),
(2, 2, 2, 2, 2, '2024-01-05', 4.50, 75.00, 'API endpoints 75% done.', FALSE),
(3, 3, 3, 3, 3, '2024-01-06', 5.00, 100.00, 'Database schema finalized.', TRUE),
(4, 4, 4, 4, 4, '2024-01-07', 3.50, 65.00, 'Login feature partially complete.', FALSE),
(5, 5, 5, 5, 5, '2024-01-08', 2.00, 0.00, 'Testing not started yet.', FALSE),
(6, 6, 6, 6, 6, '2024-01-09', 1.75, 100.00, 'Frontend setup complete.', TRUE),
(7, 7, 7, 7, 7, '2024-01-10', 3.25, 50.00, 'Backend logic in progress.', FALSE),
(8, 8, 8, 8, 8, '2024-01-11', 2.75, 100.00, 'Email service configured.', TRUE),
(9, 9, 9, 9, 9, '2024-01-12', 3.00, 60.00, 'PDF export halfway done.', FALSE),
(10, 10, 10, 10, 10, '2024-01-13', 2.50, 30.00, 'Performance testing started.', FALSE),
(11, 11, 11, 11, 11, '2024-01-14', 2.25, 100.00, 'UI polish completed.', TRUE),
(12, 12, 12, 12, 12, '2024-01-15', 3.50, 70.00, 'Scheduler job setup in progress.', FALSE),
(13, 13, 13, 13, 13, '2024-01-16', 1.50, 100.00, 'Documentation submitted.', TRUE),
(14, 14, 14, 14, 14, '2024-01-17', 2.00, 0.00, 'Deployment pending approval.', FALSE),
(15, 15, 15, 15, 15, '2024-01-18', 2.75, 80.00, 'Bug fixes applied.', TRUE),
(16, 16, 16, 16, 16, '2024-01-19', 1.25, 40.00, 'Mobile layout design initiated.', FALSE),
(17, 17, 17, 17, 17, '2024-01-20', 2.00, 10.00, 'Chatbot integration beginning.', FALSE),
(18, 18, 18, 18, 18, '2024-01-21', 3.00, 100.00, 'Analytics tracking working.', TRUE),
(19, 19, 19, 19, 19, '2024-01-22', 2.50, 60.00, 'Language support development.', FALSE),
(20, 20, 20, 20, 20, '2024-01-23', 1.75, 100.00, 'SEO improvements finalized.', TRUE),
(21, 21, 21, 21, 21, '2024-01-24', 2.25, 100.00, 'Feedback system live.', TRUE),
(22, 22, 22, 22, 22, '2024-01-25', 2.50, 85.00, 'Audit log feature almost done.', TRUE),
(23, 23, 23, 23, 23, '2024-01-26', 1.00, 10.00, 'Map integration in early phase.', FALSE),
(24, 24, 24, 24, 24, '2024-01-27', 3.00, 100.00, 'SMS service completed.', TRUE),
(25, 25, 25, 25, 25, '2024-01-28', 4.00, 90.00, 'Admin panel nearly finished.', TRUE),
(26, 26, 26, 26, 26, '2024-01-29', 3.50, 100.00, 'PDF report feature tested.', TRUE),
(27, 27, 27, 27, 27, '2024-01-30', 2.25, 70.00, 'Push notifications implemented.', TRUE),
(28, 28, 28, 28, 28, '2024-01-31', 2.00, 30.00, 'Error tracking setup incomplete.', FALSE),
(29, 29, 29, 29, 29, '2024-02-01', 4.00, 95.00, 'CI/CD pipeline configured.', TRUE),
(30, 30, 30, 30, 30, '2024-02-02', 2.50, 50.00, 'Live chat feature under development.', FALSE);