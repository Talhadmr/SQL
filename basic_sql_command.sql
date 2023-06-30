select * from CUSTOMERS /* Customers tablosunun i�indeki her �eyi se�er*/

/*insert CUSTOMERS VALUES 
('ornek', 'ornek', 'ornek', '2001-01-01', 'o', 'o',22) insert komutu tabloya sat�r eklemeye yarar*/

UPDATE CUSTOMERS
set NATION = 'tr', AGE = DATEDIFF(year, BIRTHDATE, getdate()) /* update fonksiyonu bir s�tunun i�indeki de�erleri 
de�i�tirmeye yarar. DATEDIFF fonksiyonu iki tarihin fark�n� almaya yara*/

DELETE CUSTOMERS/* DELETE komutu istedi�imiz �eyleri silmeye yarar. Where komutunu ��renmedi�imiz i�in 
burada tablonun i�indeki t�m de�erleri sildi.*/

TRUNCATE TABLE CUSTOMERS /* Truncate komutu tablonun i�indeki her �eyi siler. Deleteden fark� delete ile t�m 
tabloyu silsek bile yeni de�er ekledi�imizde index numaras� 0 dan de�il eski tabloda kald��� yerden devam eder.
truncate komutu delete g�re daha h�zl�*/

SELECT DISTINCT CITY FROM CUSTOMERS /* Birbiriyle ayn� isme sahip de�erleri tek bir de�ere indirir. �rne�in
bu �rnekte t�m �ehirleri tekile indirdi�inde 81 de�er ��kar�r kar��m�za.*/


SELECT DISTINCT CITY, DISTRICT FROM CUSTOMERS
where CITY = 'istanbul' 

select * FROM CUSTOMERS

order by CITY asc, d�str�ct,  CUSTOMERNAME desc /* se�ti�im tabloyu �be �ehirlerin alfabeye g�re s�ralams�n�(asc)
sonra il�eleri (deffault asc), �ehir ve il�edeki insanlar� da kendi i�inde alfabenin tersine g�re s�rala (desc)*/

select TOP 10 * from CUSTOMERS  /* ilk 10 de�eri getirdi pandas head gibi*/
select top 10 percent * from CUSTOMERS /* %10 u getirdi*/
