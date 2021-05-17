DROP DATABASE IF EXISTS students;

CREATE DATABASE students DEFAULT CHARACTER SET 'utf8';

USE students;

create table groups
(
  group_id int unsigned not null auto_increment,
  groupName varchar(255) not null,
  curator varchar(255) not null,
  speciality varchar(255) not null,
  primary key (group_id)
) engine=InnoDB;

create table students
(
  student_id int unsigned not null auto_increment,
  firstName varchar(255) not null,
  surName varchar(255) not null,
  patronymic varchar(255) not null,
  dateOfBirth date not null,
  sex char(1),
  group_id int not null,
  educationYear int not null,
  primary key (student_id)
) engine=InnoDB;

set names 'utf8';

insert into groups (groupName, curator, speciality) 
values ('3-Ж', 'Абрамова', 'Прикладная математика и информатика');
insert into groups (groupName, curator, speciality) 
values ('3-А', 'Золотая', 'Прикладная математика и информатика(Статистика)');

insert into students (firstName, patronymic, surName, sex, dateOfBirth, group_id, educationYear)
values ('Алексей', 'Александрович', 'Милованов', 'М', '1999-03-30', 1, 2018);

insert into students (firstName, patronymic, surName, sex, dateOfBirth, group_id, educationYear)
values ('Илона', 'Гиевна', 'Джанджария', 'Ж', '2001-03-03', 1, 2018);

insert into students (firstName, patronymic, surName, sex, dateOfBirth, group_id, educationYear)
values ('Даниил', '', 'Медяник', 'М', '1990-01-10', 1, 2018);

insert into students (firstName, patronymic, surName, sex, dateOfBirth, group_id, educationYear)
values ('Диана', '', 'Балуева', 'Ж', '1991-03-12', 2, 2018);
