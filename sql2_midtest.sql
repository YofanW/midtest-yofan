-- create table
CREATE table email_list (
  id int PRIMARY key,
  email varchar
);

-- input table
INSERT into email_list (id, email) VALUES
('1', 'abc@gmail.com'),
('2', 'def@gmail.com'),
('3', 'abc@yahoo.com'),
('4', 'abc@gmail.com'),
('5', 'def@gmail.com'),
('6', 'def@gmail.com'),
('7', 'abc@bing.com');


-- query
select de.email
from (
  select email, COUNT(email) count_email
  from email_list
  group by email
  ) as de
where de.count_email > 1;