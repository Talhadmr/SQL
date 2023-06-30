select * from CUSTOMERS
/*where CITY = 'mardin' þehri mardin olan tüm satýrlarý getirir*/
/*where CUSTOMERNAME like 'Talha%'* ismi talha ile baþlayan tüm satýrlarý getirir*/
/*where BIRTHDATE between '19800101' AND '19900101' doðum tarihi belirtilen tarihler arasýndda olanlar getirir.*/
/*where not ID = 1 ýd bir dýþýnda olan tüm satýrlarý getirir.*/
/*where CITY in ('Ýstanbul', 'Ýzmir') istanbul ve izmirde yaþayanlar*/
/*UPDATE CUSTOMERS set GENDER = 'erkek' where GENDER = 'E'  cinsiyeti E olanlarý erkek ile deðiþtirik*/
/*where CITY ='Ýstanbul' or CITY = 'Ýzmir'*/
where CITY = 'Ýstanbul' AND (DISTRICT = 'Ümraniye' or DISTRICT = 'Kaðýthane') AND gender = 'erkek'