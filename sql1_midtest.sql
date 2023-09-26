-- create table
CREATE table input_table (
  id int PRIMARY key,
  num int not NULL
);

-- input table
insert into input_table (id, num) values
  ('1', '1'),
  ('2', '1'),
  ('3', '1'),
  ('4', '2'),
  ('5', '1'),
  ('6', '2'),
  ('7', '2'), 
  ('8', '1');

-- query
SELECT cn.num
from 
	(select num, count(id) count_num
     from input_table
     GROUP by num
     ) as cn
where cn.count_num > 2
order by cn.count_num ASC;
