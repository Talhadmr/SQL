select * from CUSTOMERS
/*where CITY = 'mardin' �ehri mardin olan t�m sat�rlar� getirir*/
/*where CUSTOMERNAME like 'Talha%'* ismi talha ile ba�layan t�m sat�rlar� getirir*/
/*where BIRTHDATE between '19800101' AND '19900101' do�um tarihi belirtilen tarihler aras�ndda olanlar getirir.*/
/*where not ID = 1 �d bir d���nda olan t�m sat�rlar� getirir.*/
/*where CITY in ('�stanbul', '�zmir') istanbul ve izmirde ya�ayanlar*/
/*UPDATE CUSTOMERS set GENDER = 'erkek' where GENDER = 'E'  cinsiyeti E olanlar� erkek ile de�i�tirik*/
/*where CITY ='�stanbul' or CITY = '�zmir'*/
where CITY = '�stanbul' AND (DISTRICT = '�mraniye' or DISTRICT = 'Ka��thane') AND gender = 'erkek'