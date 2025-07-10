/*Airlines*/
create database Transport;
use Transport;
create table airlines_info(airline_id int, airline_name varchar(30), country varchar(30), 
founded_year int, fleet_size int);

use transport;
alter table airlines_info
add ceo varchar(30),
add headquarters varchar(50),
add alliance varchar(30);

use transport;
alter table airlines_info
rename column founded_year to established_on,
rename column fleet_size to total_aircrafts;

use transport;
alter table airlines_info
modify column name varchar(40),
modify column total_aircrafts smallint,
modify column ceo varchar(40);

insert into airlines_info values
(1, 'IndiGo', 'India', 2006, 320, 'Pieter Elbers', 'Gurgaon', 'None'),
(2, 'Air India', 'India', 1932, 120, 'Campbell Wilson', 'Delhi', 'Star Alliance'),
(3, 'SpiceJet', 'India', 2005, 90, 'Ajay Singh', 'Gurgaon', 'None'),
(4, 'Vistara', 'India', 2013, 60, 'Vinod Kannan', 'Gurgaon', 'None'),
(5, 'Go First', 'India', 2005, 55, 'Kaushik Khona', 'Mumbai', 'None'),
(6, 'Emirates', 'UAE', 1985, 250, 'Tim Clark', 'Dubai', 'None'),
(7, 'Qatar Airways', 'Qatar', 1993, 230, 'Akbar Al Baker', 'Doha', 'OneWorld'),
(8, 'Singapore Airlines', 'Singapore', 1947, 135, 'Goh Choon Phong', 'Singapore', 'Star Alliance'),
(9, 'Lufthansa', 'Germany', 1953, 280, 'Carsten Spohr', 'Frankfurt', 'Star Alliance'),
(10, 'British Airways', 'UK', 1974, 277, 'Sean Doyle', 'London', 'OneWorld'),
(11, 'United Airlines', 'USA', 1926, 860, 'Scott Kirby', 'Chicago', 'Star Alliance'),
(12, 'Delta Airlines', 'USA', 1924, 850, 'Ed Bastian', 'Atlanta', 'SkyTeam'),
(13, 'American Airlines', 'USA', 1926, 950, 'Robert Isom', 'Fort Worth', 'OneWorld'),
(14, 'AirAsia', 'Malaysia', 1993, 150, 'Tony Fernandes', 'Kuala Lumpur', 'None'),
(15, 'Etihad', 'UAE', 2003, 100, 'Antonoaldo Neves', 'Abu Dhabi', 'None'),
(16, 'Turkish Airlines', 'Turkey', 1933, 370, 'Ahmet Bolat', 'Istanbul', 'Star Alliance'),
(17, 'KLM', 'Netherlands', 1919, 120, 'Marjan Rintel', 'Amstelveen', 'SkyTeam'),
(18, 'Air France', 'France', 1933, 210, 'Anne Rigail', 'Paris', 'SkyTeam'),
(19, 'Cathay Pacific', 'Hong Kong', 1946, 150, 'Ronald Lam', 'Hong Kong', 'OneWorld'),
(20, 'Japan Airlines', 'Japan', 1951, 160, 'Yuji Akasaka', 'Tokyo', 'OneWorld');

UPDATE airlines_info SET ceo = 'New CEO 1' WHERE airline_id = 1;
UPDATE airlines_info SET headquarters = 'New HQ 2' WHERE airline_id = 2;
UPDATE airlines_info SET alliance = 'New Alliance 3' WHERE airline_id = 3;
UPDATE airlines_info SET total_aircrafts = 100 WHERE airline_id = 4;
UPDATE airlines_info SET country = 'India - Asia' WHERE airline_id = 5;
UPDATE airlines_info SET name = 'NewAir6' WHERE airline_id = 6;
UPDATE airlines_info SET established_on = 1990 WHERE airline_id = 7;
UPDATE airlines_info SET ceo = 'New CEO 8' WHERE airline_id = 8;
UPDATE airlines_info SET alliance = 'AllianceX' WHERE airline_id = 9;
UPDATE airlines_info SET total_aircrafts = 350 WHERE airline_id = 10;

DELETE FROM airlines_info WHERE country = 'UAE' AND alliance = 'None';
DELETE FROM airlines_info WHERE total_aircrafts BETWEEN 50 AND 100;
DELETE FROM airlines_info WHERE name IN ('AirAsia', 'Go First');
DELETE FROM airlines_info WHERE alliance NOT IN ('OneWorld', 'Star Alliance');
DELETE FROM airlines_info WHERE airline_id NOT BETWEEN 10 AND 20;



/*Country*/
create table country_info(country_id int, country_name varchar(30), continent varchar(30), 
population bigint, currency varchar(20));

use transport;
alter table country_info
add capital varchar(30),
add language varchar(30),
add code varchar(5);

use transport;
alter table country_info
rename column country_name to name,
rename column currency to currency_name,
rename column code to country_code;

use transport;
alter table country_info
modify column name varchar(40),
modify column currency_name varchar(30),
modify column capital varchar(40);

insert into country_info values
(1, 'India', 'Asia', 1400000000, 'Rupee', 'New Delhi', 'Hindi', 'IN'),
(2, 'USA', 'North America', 331000000, 'Dollar', 'Washington', 'English', 'US'),
(3, 'UK', 'Europe', 67000000, 'Pound', 'London', 'English', 'GB'),
(4, 'Germany', 'Europe', 83000000, 'Euro', 'Berlin', 'German', 'DE'),
(5, 'France', 'Europe', 67000000, 'Euro', 'Paris', 'French', 'FR'),
(6, 'Japan', 'Asia', 125000000, 'Yen', 'Tokyo', 'Japanese', 'JP'),
(7, 'China', 'Asia', 1400000000, 'Yuan', 'Beijing', 'Mandarin', 'CN'),
(8, 'Australia', 'Australia', 25000000, 'Dollar', 'Canberra', 'English', 'AU'),
(9, 'Canada', 'North America', 38000000, 'Dollar', 'Ottawa', 'English/French', 'CA'),
(10, 'Russia', 'Europe', 144000000, 'Ruble', 'Moscow', 'Russian', 'RU'),
(11, 'Brazil', 'South America', 213000000, 'Real', 'Brasilia', 'Portuguese', 'BR'),
(12, 'South Africa', 'Africa', 60000000, 'Rand', 'Pretoria', 'Zulu', 'ZA'),
(13, 'Italy', 'Europe', 60000000, 'Euro', 'Rome', 'Italian', 'IT'),
(14, 'Spain', 'Europe', 47000000, 'Euro', 'Madrid', 'Spanish', 'ES'),
(15, 'Mexico', 'North America', 126000000, 'Peso', 'Mexico City', 'Spanish', 'MX'),
(16, 'Indonesia', 'Asia', 273000000, 'Rupiah', 'Jakarta', 'Indonesian', 'ID'),
(17, 'South Korea', 'Asia', 52000000, 'Won', 'Seoul', 'Korean', 'KR'),
(18, 'Saudi Arabia', 'Asia', 35000000, 'Riyal', 'Riyadh', 'Arabic', 'SA'),
(19, 'UAE', 'Asia', 9800000, 'Dirham', 'Abu Dhabi', 'Arabic', 'AE'),
(20, 'Singapore', 'Asia', 5700000, 'Dollar', 'Singapore', 'English', 'SG');

UPDATE country_info SET population = 9999999 WHERE country_id = 1;
UPDATE country_info SET capital = 'Updated Delhi' WHERE country_id = 2;
UPDATE country_info SET language = 'Updated English' WHERE country_id = 3;
UPDATE country_info SET currency_name = 'Updated Euro' WHERE country_id = 4;
UPDATE country_info SET continent = 'Europe Updated' WHERE country_id = 5;
UPDATE country_info SET name = 'New Japan' WHERE country_id = 6;
UPDATE country_info SET country_code = 'NJP' WHERE country_id = 7;
UPDATE country_info SET language = 'Updated Chinese' WHERE country_id = 8;
UPDATE country_info SET capital = 'Updated Ottawa' WHERE country_id = 9;
UPDATE country_info SET population = 7777777 WHERE country_id = 10;

DELETE FROM country_info WHERE continent = 'Africa';
DELETE FROM country_info WHERE name IN ('Mexico', 'Brazil');
DELETE FROM country_info WHERE language = 'Spanish' OR currency_name = 'Real';
DELETE FROM country_info WHERE country_id NOT BETWEEN 5 AND 15;
DELETE FROM country_info WHERE capital = 'Tokyo' AND population > 100000000;

/*State*/
create table state_info(state_id int, state_name varchar(30), country varchar(30), 
population bigint, capital varchar(30));

use transport;
alter table state_info
add language varchar(30),
add area int,
add code varchar(10);

use transport;
alter table state_info
rename column state_name to name,
rename column area to area_km,
rename column code to state_code;

use transport;
alter table state_info
modify column name varchar(40),
modify column population bigint,
modify column area_km int;

insert into state_info values
(1, 'Karnataka', 'India', 70000000, 'Bengaluru', 'Kannada', 191791, 'KA'),
(2, 'Maharashtra', 'India', 112000000, 'Mumbai', 'Marathi', 307713, 'MH'),
(3, 'Tamil Nadu', 'India', 78000000, 'Chennai', 'Tamil', 130058, 'TN'),
(4, 'California', 'USA', 39500000, 'Sacramento', 'English', 423970, 'CA'),
(5, 'Texas', 'USA', 29000000, 'Austin', 'English', 695662, 'TX'),
(6, 'New York', 'USA', 20000000, 'Albany', 'English', 141297, 'NY'),
(7, 'Bavaria', 'Germany', 13000000, 'Munich', 'German', 70542, 'BY'),
(8, 'Queensland', 'Australia', 5200000, 'Brisbane', 'English', 1852642, 'QLD'),
(9, 'Ontario', 'Canada', 14700000, 'Toronto', 'English/French', 1076395, 'ON'),
(10, 'British Columbia', 'Canada', 5100000, 'Victoria', 'English', 944735, 'BC'),
(11, 'New South Wales', 'Australia', 8200000, 'Sydney', 'English', 800642, 'NSW'),
(12, 'Haryana', 'India', 28000000, 'Chandigarh', 'Hindi', 44212, 'HR'),
(13, 'Kerala', 'India', 35000000, 'Thiruvananthapuram', 'Malayalam', 38863, 'KL'),
(14, 'Rajasthan', 'India', 81000000, 'Jaipur', 'Hindi', 342239, 'RJ'),
(15, 'West Bengal', 'India', 91000000, 'Kolkata', 'Bengali', 88752, 'WB'),
(16, 'Punjab', 'India', 30000000, 'Chandigarh', 'Punjabi', 50362, 'PB'),
(17, 'Gujarat', 'India', 63000000, 'Gandhinagar', 'Gujarati', 196024, 'GJ'),
(18, 'Uttar Pradesh', 'India', 220000000, 'Lucknow', 'Hindi', 243286, 'UP'),
(19, 'Madhya Pradesh', 'India', 85000000, 'Bhopal', 'Hindi', 308252, 'MP'),
(20, 'Odisha', 'India', 46000000, 'Bhubaneswar', 'Odia', 155707, 'OR');

UPDATE state_info SET language = 'Updated Kannada' WHERE state_id = 1;
UPDATE state_info SET area_km = 202020 WHERE state_id = 2;
UPDATE state_info SET capital = 'Updated Chennai' WHERE state_id = 3;
UPDATE state_info SET state_code = 'CAL' WHERE state_id = 4;
UPDATE state_info SET population = 5555555 WHERE state_id = 5;
UPDATE state_info SET name = 'Updated NY' WHERE state_id = 6;
UPDATE state_info SET capital = 'Updated Munich' WHERE state_id = 7;
UPDATE state_info SET language = 'Updated English' WHERE state_id = 8;
UPDATE state_info SET area_km = 654321 WHERE state_id = 9;
UPDATE state_info SET state_code = 'NEWCODE' WHERE state_id = 10;

DELETE FROM state_info WHERE name = 'Kerala';
DELETE FROM state_info WHERE area_km BETWEEN 50000 AND 100000;
DELETE FROM state_info WHERE state_code IN ('MH', 'KA', 'UP');
DELETE FROM state_info WHERE capital NOT IN ('Mumbai', 'Delhi', 'Chennai');
DELETE FROM state_info WHERE state_id NOT BETWEEN 1 AND 10;



SELECT * FROM airlines_info WHERE alliance = 'Star Alliance';
SELECT * FROM country_info WHERE continent = 'Europe';
SELECT * FROM state_info WHERE language = 'English';

SELECT * FROM airlines_info WHERE total_aircrafts > 200 AND alliance = 'OneWorld';
SELECT * FROM airlines_info WHERE alliance = 'None' OR country = 'India';
SELECT * FROM airlines_info WHERE airline_id IN (1,3,5,7);
SELECT * FROM airlines_info WHERE airline_id NOT IN (2,4,6,8);
SELECT * FROM airlines_info WHERE total_aircrafts BETWEEN 100 AND 300;
SELECT * FROM airlines_info WHERE airline_id NOT BETWEEN 5 AND 15;

SELECT * FROM country_info WHERE continent = 'Asia' AND language = 'Hindi';
SELECT * FROM country_info WHERE name = 'USA' OR capital = 'Tokyo';
SELECT * FROM country_info WHERE country_id IN (3,6,9);
SELECT * FROM country_info WHERE country_id NOT IN (1,2,4);
SELECT * FROM country_info WHERE population BETWEEN 50000000 AND 150000000;
SELECT * FROM country_info WHERE country_id NOT BETWEEN 7 AND 17;

SELECT * FROM state_info WHERE population > 50000000 AND language = 'Hindi';
SELECT * FROM state_info WHERE area_km < 100000 OR capital = 'Bhopal';
SELECT * FROM state_info WHERE state_id IN (2,4,6,8);
SELECT * FROM state_info WHERE state_id NOT IN (1,3,5,7);
SELECT * FROM state_info WHERE population BETWEEN 30000000 AND 80000000;
SELECT * FROM state_info WHERE state_id NOT BETWEEN 5 AND 15;


CREATE TABLE student_info (
    id INT,
    name VARCHAR(30),
    age INT,
    gender VARCHAR(10),
    course VARCHAR(30),
    department VARCHAR(30),
    grade CHAR(1),
    city VARCHAR(30)
);

INSERT INTO student_info VALUES
(1, 'Rahul', 21, 'Male', 'B.Tech', 'CSE', 'A', 'Mumbai'),
(2, 'Priya', 22, 'Female', 'BSc', 'Physics', 'B', 'Delhi'),
(3, 'Amit', 23, 'Male', 'B.Com', 'Finance', 'C', 'Kolkata'),
(4, 'Sneha', 20, 'Female', 'BCA', 'IT', 'A', 'Chennai'),
(5, 'Arjun', 22, 'Male', 'BBA', 'Management', 'B', 'Bangalore'),
(6, 'Kiran', 21, 'Male', 'BA', 'History', 'C', 'Hyderabad'),
(7, 'Neha', 19, 'Female', 'BSc', 'Biology', 'A', 'Pune'),
(8, 'Vikram', 23, 'Male', 'B.Tech', 'ECE', 'B', 'Ahmedabad'),
(9, 'Divya', 22, 'Female', 'BSc', 'Maths', 'B', 'Lucknow'),
(10, 'Ravi', 24, 'Male', 'M.Tech', 'CSE', 'A', 'Jaipur'),
(11, 'Anjali', 21, 'Female', 'BCA', 'IT', 'A', 'Surat'),
(12, 'Suresh', 22, 'Male', 'BCom', 'Accounts', 'C', 'Indore'),
(13, 'Meena', 23, 'Female', 'BSc', 'Physics', 'B', 'Bhopal'),
(14, 'Zara', 20, 'Female', 'BA', 'Psychology', 'A', 'Goa'),
(15, 'Farhan', 21, 'Male', 'BBA', 'Marketing', 'B', 'Nagpur'),
(16, 'Tina', 22, 'Female', 'BSc', 'Chemistry', 'C', 'Patna'),
(17, 'Nikhil', 24, 'Male', 'MSc', 'Maths', 'A', 'Noida'),
(18, 'Anita', 21, 'Female', 'B.Tech', 'IT', 'A', 'Trichy'),
(19, 'Mohit', 22, 'Male', 'BCom', 'Finance', 'B', 'Coimbatore'),
(20, 'Latha', 23, 'Female', 'MBA', 'HR', 'B', 'Mysore');

UPDATE student_info SET grade = 'B' WHERE id = 1;
UPDATE student_info SET course = 'MBA' WHERE name = 'Priya';
UPDATE student_info SET city = 'Mangalore' WHERE department = 'Finance';
UPDATE student_info SET age = 25 WHERE id = 10;
UPDATE student_info SET department = 'AI' WHERE course = 'B.Tech';
UPDATE student_info SET grade = 'C' WHERE name = 'Ravi';
UPDATE student_info SET city = 'Udupi' WHERE id = 4;
UPDATE student_info SET course = 'MCA' WHERE name = 'Anjali';
UPDATE student_info SET grade = 'A' WHERE id = 16;
UPDATE student_info SET department = 'Economics' WHERE name = 'Kiran';

DELETE FROM student_info WHERE grade = 'C';
DELETE FROM student_info WHERE city = 'Chennai' AND department = 'IT';
DELETE FROM student_info WHERE id = 2 OR id = 4;
DELETE FROM student_info WHERE id IN (3, 6, 9);
DELETE FROM student_info WHERE id NOT IN (1, 5, 7);
DELETE FROM student_info WHERE id BETWEEN 15 AND 17;
DELETE FROM student_info WHERE id NOT BETWEEN 1 AND 10;




CREATE TABLE product_info (
    product_id INT,
    product_name VARCHAR(40),
    category VARCHAR(30),
    brand VARCHAR(30),
    price DECIMAL(10,2),
    stock INT,
    rating DECIMAL(3,1),
    origin_country VARCHAR(30)
);

INSERT INTO product_info VALUES
(1, 'iPhone 13', 'Mobile', 'Apple', 79999, 50, 4.8, 'USA'),
(2, 'Galaxy S21', 'Mobile', 'Samsung', 69999, 30, 4.5, 'South Korea'),
(3, 'ThinkPad X1', 'Laptop', 'Lenovo', 120000, 25, 4.6, 'China'),
(4, 'Dell Inspiron', 'Laptop', 'Dell', 65000, 40, 4.2, 'USA'),
(5, 'iPad Air', 'Tablet', 'Apple', 55000, 60, 4.7, 'USA'),
(6, 'Mi Band 6', 'Wearable', 'Xiaomi', 2999, 100, 4.3, 'China'),
(7, 'Echo Dot', 'Smart Home', 'Amazon', 4499, 75, 4.4, 'USA'),
(8, 'PS5', 'Console', 'Sony', 49990, 10, 4.9, 'Japan'),
(9, 'Surface Pro', 'Tablet', 'Microsoft', 85000, 15, 4.5, 'USA'),
(10, 'OnePlus 11', 'Mobile', 'OnePlus', 58999, 70, 4.6, 'China'),
(11, 'Redmi Note 10', 'Mobile', 'Xiaomi', 14999, 120, 4.3, 'China'),
(12, 'Realme Buds Q2', 'Audio', 'Realme', 2499, 90, 4.2, 'India'),
(13, 'BoAt Rockerz', 'Audio', 'BoAt', 1999, 85, 4.1, 'India'),
(14, 'Canon EOS', 'Camera', 'Canon', 65000, 20, 4.6, 'Japan'),
(15, 'Nikon D5600', 'Camera', 'Nikon', 60000, 22, 4.4, 'Japan'),
(16, 'Asus ROG', 'Laptop', 'Asus', 150000, 18, 4.7, 'Taiwan'),
(17, 'HP Pavilion', 'Laptop', 'HP', 55000, 35, 4.3, 'USA'),
(18, 'iMac', 'Desktop', 'Apple', 125000, 12, 4.8, 'USA'),
(19, 'Google Nest', 'Smart Home', 'Google', 7999, 33, 4.6, 'USA'),
(20, 'MacBook Pro', 'Laptop', 'Apple', 180000, 14, 4.9, 'USA');

UPDATE product_info SET price = 74999 WHERE product_name = 'Galaxy S21';
UPDATE product_info SET stock = 45 WHERE brand = 'Apple';
UPDATE product_info SET origin_country = 'India' WHERE brand = 'BoAt';
UPDATE product_info SET rating = 4.0 WHERE product_id = 13;
UPDATE product_info SET price = 999 WHERE product_name = 'Realme Buds Q2';
UPDATE product_info SET stock = 5 WHERE product_name = 'PS5';
UPDATE product_info SET brand = 'HP' WHERE product_name = 'HP Pavilion';
UPDATE product_info SET rating = 4.9 WHERE product_id = 20;
UPDATE product_info SET price = 64000 WHERE product_name = 'Canon EOS';
UPDATE product_info SET origin_country = 'Taiwan' WHERE brand = 'Asus';

DELETE FROM product_info WHERE price < 5000;
DELETE FROM product_info WHERE category = 'Audio' AND stock < 100;
DELETE FROM product_info WHERE brand = 'Xiaomi' OR rating < 4.2;
DELETE FROM product_info WHERE product_id IN (3, 6, 8, 12);
DELETE FROM product_info WHERE brand NOT IN ('Apple', 'Sony');
DELETE FROM product_info WHERE price BETWEEN 50000 AND 70000;
DELETE FROM product_info WHERE stock NOT BETWEEN 10 AND 80;




CREATE TABLE hospital_info (
    patient_id INT,
    patient_name VARCHAR(30),
    age INT,
    gender VARCHAR(10),
    disease VARCHAR(30),
    doctor VARCHAR(30),
    room_no INT,
    admission_city VARCHAR(30)
);

INSERT INTO hospital_info VALUES
(1, 'Ramesh', 45, 'Male', 'Diabetes', 'Dr. Rao', 101, 'Delhi'),
(2, 'Sita', 50, 'Female', 'Hypertension', 'Dr. Sharma', 102, 'Mumbai'),
(3, 'Amit', 30, 'Male', 'Fever', 'Dr. Mehta', 103, 'Pune'),
(4, 'Anjali', 40, 'Female', 'Covid', 'Dr. Menon', 104, 'Bangalore'),
(5, 'Zahid', 29, 'Male', 'Malaria', 'Dr. Roy', 105, 'Kolkata'),
(6, 'Pooja', 35, 'Female', 'Cough', 'Dr. Iyer', 106, 'Chennai'),
(7, 'Arjun', 38, 'Male', 'Cold', 'Dr. Kapoor', 107, 'Hyderabad'),
(8, 'Neha', 27, 'Female', 'Asthma', 'Dr. Paul', 108, 'Ahmedabad'),
(9, 'Vikram', 55, 'Male', 'Heart Disease', 'Dr. Desai', 109, 'Lucknow'),
(10, 'Swati', 32, 'Female', 'Migraine', 'Dr. Shah', 110, 'Indore'),
(11, 'Sanjay', 44, 'Male', 'Kidney Stone', 'Dr. Bhatt', 111, 'Bhopal'),
(12, 'Kiran', 28, 'Female', 'Fracture', 'Dr. Rao', 112, 'Nagpur'),
(13, 'Meena', 36, 'Female', 'Back Pain', 'Dr. Sharma', 113, 'Patna'),
(14, 'Ravi', 60, 'Male', 'Cancer', 'Dr. Roy', 114, 'Trivandrum'),
(15, 'Divya', 31, 'Female', 'Thyroid', 'Dr. Nair', 115, 'Mysore'),
(16, 'Sameer', 26, 'Male', 'Allergy', 'Dr. Kumar', 116, 'Noida'),
(17, 'Anita', 52, 'Female', 'BP', 'Dr. Shah', 117, 'Surat'),
(18, 'Farhan', 29, 'Male', 'Fever', 'Dr. Mehta', 118, 'Goa'),
(19, 'Preeti', 34, 'Female', 'Acidity', 'Dr. Menon', 119, 'Kanpur'),
(20, 'Nikhil', 39, 'Male', 'Covid', 'Dr. Kapoor', 120, 'Delhi');

UPDATE hospital_info SET disease = 'Diabetes Type 2' WHERE patient_id = 1;
UPDATE hospital_info SET doctor = 'Dr. Reddy' WHERE patient_name = 'Anjali';
UPDATE hospital_info SET room_no = 201 WHERE age > 50;
UPDATE hospital_info SET gender = 'Other' WHERE patient_name = 'Zahid';
UPDATE hospital_info SET admission_city = 'Thane' WHERE patient_name = 'Ravi';
UPDATE hospital_info SET disease = 'High BP' WHERE disease = 'BP';
UPDATE hospital_info SET doctor = 'Dr. Nair' WHERE room_no = 104;
UPDATE hospital_info SET age = 33 WHERE patient_id = 10;
UPDATE hospital_info SET admission_city = 'Vizag' WHERE disease = 'Asthma';
UPDATE hospital_info SET disease = 'Covid-19' WHERE disease = 'Covid';

DELETE FROM hospital_info WHERE disease = 'Cough';
DELETE FROM hospital_info WHERE age > 40 AND disease = 'Cancer';
DELETE FROM hospital_info WHERE patient_id IN (1, 5, 9);
DELETE FROM hospital_info WHERE room_no NOT IN (101, 102, 103);
DELETE FROM hospital_info WHERE patient_id BETWEEN 11 AND 13;
DELETE FROM hospital_info WHERE patient_id NOT BETWEEN 6 AND 10;
DELETE FROM hospital_info WHERE admission_city = 'Delhi' OR doctor = 'Dr. Shah';

SELECT * FROM student_info WHERE department = 'CSE';
SELECT * FROM product_info WHERE brand = 'Apple';
SELECT * FROM hospital_info WHERE disease = 'Fever';

SELECT * FROM student_info WHERE course = 'BSc' AND grade = 'A';
SELECT * FROM product_info WHERE brand = 'Apple' OR rating > 4.8;
SELECT * FROM hospital_info WHERE age < 35 AND city = 'Pune';

SELECT * FROM student_info WHERE city IN ('Mumbai', 'Delhi', 'Bangalore');
SELECT * FROM product_info WHERE brand NOT IN ('Apple', 'Samsung');
SELECT * FROM hospital_info WHERE doctor IN ('Dr. Rao', 'Dr. Sharma');

SELECT * FROM student_info WHERE age BETWEEN 20 AND 23;
SELECT * FROM product_info WHERE price NOT BETWEEN 60000 AND 100000;
SELECT * FROM hospital_info WHERE patient_id BETWEEN 10 AND 15;

UPDATE student_info SET grade = 'B' WHERE age BETWEEN 20 AND 22;
UPDATE student_info SET city = 'Hubli' WHERE department IN ('IT', 'CSE');

UPDATE product_info SET price = 99999 WHERE brand = 'Apple' AND rating > 4.5;
UPDATE product_info SET stock = 0 WHERE origin_country NOT IN ('India', 'USA');

UPDATE hospital_info SET disease = 'Recovered' WHERE age BETWEEN 30 AND 35;
UPDATE hospital_info SET doctor = 'Dr. Naik' WHERE disease IN ('Migraine', 'Back Pain');


CREATE TABLE employee_info (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender CHAR(1),
    dob DATE,
    email VARCHAR(100),
    phone VARCHAR(15),
    department VARCHAR(50),
    designation VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employee_info 
(emp_id, first_name, last_name, gender, dob, email, phone, department, designation, salary)
VALUES 
(1, 'Anita', 'Sharma', 'F', '1990-05-20', 'anita.sharma@example.com', '9876543210', 'HR', 'Manager', 60000.00),
(2, 'Raj', 'Verma', 'M', '1985-11-15', 'raj.verma@example.com', '9123456780', 'IT', 'Software Engineer', 75000.00),
(3, 'Meena', 'Kumar', 'F', '1992-08-10', 'meena.kumar@example.com', '8899001122', 'Finance', 'Analyst', 55000.00),
(4, 'Amit', 'Joshi', 'M', '1988-02-28', 'amit.joshi@example.com', '9988776655', 'Marketing', 'Executive', 48000.00),
(5, 'Sneha', 'Patil', 'F', '1995-12-05', 'sneha.patil@example.com', '9876123456', 'IT', 'UI/UX Designer', 62000.00),
(6, 'Vikram', 'Rao', 'M', '1983-06-17', 'vikram.rao@example.com', '9786234512', 'Sales', 'Sales Lead', 58000.00),
(7, 'Priya', 'Naik', 'F', '1991-09-25', 'priya.naik@example.com', '9765432109', 'Admin', 'Admin Executive', 45000.00),
(8, 'Suresh', 'Pillai', 'M', '1989-03-30', 'suresh.pillai@example.com', '9678123456', 'Finance', 'Accountant', 53000.00),
(9, 'Kavya', 'Shetty', 'F', '1993-07-19', 'kavya.shetty@example.com', '9543216780', 'IT', 'Backend Developer', 70000.00),
(10, 'Nikhil', 'Desai', 'M', '1994-01-08', 'nikhil.desai@example.com', '9321678450', 'Support', 'Tech Support', 40000.00);

SELECT first_name AS fname, last_name AS lname, salary AS sal FROM employee_info;
SELECT COUNT(*) AS no_of_rows FROM employee_info;
SELECT SUM(salary) AS total_sal FROM employee_info;
SELECT MAX(salary) AS max_sal FROM employee_info;
SELECT MIN(salary) AS min_sal FROM employee_info;

SELECT department, MAX(salary) AS max_sal
FROM employee_info
GROUP BY department
HAVING department = 'IT';

SELECT department, SUM(salary) AS total_sal 
FROM employee_info 
GROUP BY department 
HAVING department = 'Finance';

SELECT department, MAX(salary) AS max_sal 
FROM employee_info
GROUP BY department
HAVING department = 'HR';

SELECT department, MIN(salary) AS min_sal 
FROM employee_info 
GROUP BY department 
HAVING MIN(salary) > 3000;

SELECT department, SUM(salary) AS total_sal 
FROM employee_info 
GROUP BY department;


















