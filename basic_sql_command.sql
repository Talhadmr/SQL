select * from CUSTOMERS /* Customers tablosunun içindeki her þeyi seçer*/

/*insert CUSTOMERS VALUES 
('ornek', 'ornek', 'ornek', '2001-01-01', 'o', 'o',22) insert komutu tabloya satýr eklemeye yarar*/

UPDATE CUSTOMERS
set NATION = 'tr', AGE = DATEDIFF(year, BIRTHDATE, getdate()) /* update fonksiyonu bir sütunun içindeki deðerleri 
deðiþtirmeye yarar. DATEDIFF fonksiyonu iki tarihin farkýný almaya yara*/

DELETE CUSTOMERS/* DELETE komutu istediðimiz þeyleri silmeye yarar. Where komutunu öðrenmediðimiz için 
burada tablonun içindeki tüm deðerleri sildi.*/

TRUNCATE TABLE CUSTOMERS /* Truncate komutu tablonun içindeki her þeyi siler. Deleteden farký delete ile tüm 
tabloyu silsek bile yeni deðer eklediðimizde index numarasý 0 dan deðil eski tabloda kaldýðý yerden devam eder.
truncate komutu delete göre daha hýzlý*/

SELECT DISTINCT CITY FROM CUSTOMERS /* Birbiriyle ayný isme sahip deðerleri tek bir deðere indirir. örneðin
bu örnekte tüm þehirleri tekile indirdiðinde 81 deðer çýkarýr karþýmýza.*/


SELECT DISTINCT CITY, DISTRICT FROM CUSTOMERS
where CITY = 'istanbul' 

select * FROM CUSTOMERS

order by CITY asc, dýstrýct,  CUSTOMERNAME desc /* seçtiðim tabloyu öbe þehirlerin alfabeye göre sýralamsýný(asc)
sonra ilçeleri (deffault asc), þehir ve ilçedeki insanlarý da kendi içinde alfabenin tersine göre sýrala (desc)*/

select TOP 10 * from CUSTOMERS  /* ilk 10 deðeri getirdi pandas head gibi*/
select top 10 percent * from CUSTOMERS /* %10 u getirdi*/
