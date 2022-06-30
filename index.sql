create table student(
id int(4) AUTO_INCREMENT,
firstName varchar(15) DEFAULT NULL,
lastName varchar(15) DEFAULT NULL,
email varchar(25) DEFAULT NULL,
address varchar(100) DEFAULT NULL,
Primary key(id)

);

create table batch(
id int(4) AUTO_INCREMENT,
batch_name varchar(15) DEFAULT NULL,
start_date DATE NOT NULL,
end_date DATE NOT NULL,
batch_type varchar(15) DEFAULT NULL,
language varchar(25) DEFAULT NULL,
student_count int(3) DEFAULT NULL,
Primary key(id)

);


create table mentor(
id int(4) AUTO_INCREMENT,
mentor_name varchar(15) DEFAULT NULL,
email varchar(15) DEFAULT NULL,
phone int(10) DEFAULT NULL,
skillset ENUM('CSS','HTML','JS','REACT','NODEJS','MONGO') DEFAULT NULL,
Primary key(id)

);


create table task(
id int(4) AUTO_INCREMENT,
task_name varchar(15) DEFAULT NULL,
category ENUM('CSS','HTML','JS','REACT','NODEJS','MONGO') DEFAULT NULL,
Primary key(id)

);




create table student_task_mapping(
id int(4) AUTO_INCREMENT,
task_id int(4)  DEFAULT NULL,
student_id int(4) DEFAULT NULL,
task_status varchar(15) DEFAULT NULL,
start_date DATE NOT NULL,
end_date DATE NOT NULL,
Primary key(id),
FOREIGN KEY (task_id)
REFERENCES task(id),
FOREIGN KEY (student_id)
REFERENCES student(id)

);




create table batch_mentor_mapping(
id int(4) AUTO_INCREMENT,
batch_id int(4)  DEFAULT NULL,
mentor_id int(4) DEFAULT NULL,
Primary key(id),
FOREIGN KEY (batch_id)
REFERENCES batch(id),
FOREIGN KEY (mentor_id)
REFERENCES mentor(id)

);



create table student_batch_mapping(
id int(4) AUTO_INCREMENT,
student_id int(4) DEFAULT NULL,
batch_id int(4)  DEFAULT NULL,
Primary key(id),
FOREIGN KEY (batch_id)
REFERENCES batch(id),
FOREIGN KEY (student_id)
REFERENCES student(id)

)

