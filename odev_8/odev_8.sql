--test veritabanınızda employee isimlisütun 
--bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.

CREATE TABLE employee (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	birthday DATE NOT NULL,
	email VARCHAR(100)
);


--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
--Örnek 2 farklı INSERT INTO methodu:
insert into employee (name, birthday, email) values ('Dalton', '1965-05-11', 'dsmaridge0@reddit.com');
insert into employee (name, birthday, email) values ('Curt', '1910-05-28', 'cvaudre1@prlog.org');


--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee SET name = 'Umut', birthday = '2002-05-29' WHERE id=1;

UPDATE employee SET name = 'Test' WHERE name LIKE '%e'; 

UPDATE employee SET email = 'umutkayretli25@gmail.com' WHERE name='umut';

UPDATE employee SET name = 'Doruk' WHERE name='test';

UPDATE employee SET email = 'testemail@mail.com' WHERE birthday='1993-11-15';


--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee WHERE id = 5;

DELETE FROM employee WHERE name = 'Marion';

DELETE FROM employee WHERE birthday = '1903-07-06';

DELETE FROM employee WHERE name = 'test' AND id = 12;

DELETE FROM employee WHERE email = 'bwyneb@un.org';