select 
min(AMOUNT), /* EN DÜÞÜK SATIÞ ADEDÝ*/
max(AMOUNT), /* EN YÜKSEK SATIÞ ADEDÝ*/
AVG(AMOUNT),/* SATIÞ ADEDÝ ORTALAMASI*/
COUNT(AMOUNT),/*SATIÞ ADEDÝ SAYISI*/
SUM(AMOUNT)/*SATIÞ ADEDÝ TOPLAMI*/
From SALES

SELECT CITY , 
SUM(TOTALPRICE) AS TOTALPRÝCE

FROM SALES

GROUP BY CITY

ORDER BY SUM(TOTALPRICE) DESC /* SALES TABLOSUNDAN EN YÜKSEK SATIÞ TOPLAMINA SAHÝP ÝLLERÝ SIRALA*/


SELECT * FROM SALES

UPDATE SALES

SET	DATE2 = CONVERT(DATE, DATE_)

SELECT CITY, DATE2, sum(TOTALPRICE) AS TOTALPRÝCE

FROM SALES
WHERE CITY = 'Ankara'

group by CITY , DATE2
ORDER BY DATE2  /* GÜNLERE GÖRE ANKARADA YAPILAN TOPLAM SATIÞ CONVERT VERÝ TÜRÜNÜ TARÝH ZAMANDAN TARÝHE ÇEVÝRDÝ*/


SELECT DATE2, CITY,
SUM(TOTALPRICE) AS TOTALPRICE
FROM SALES

WHERE DATE2 = '2019-01-01'
GROUP BY DATE2, CITY
ORDER BY TOTALPRICE DESC /* belli bir tarihte þehirlerde yapýlan toplam satýþ*/

select * from SALES

update sales set MONTHNAME_ = '01.ocak' where DATEpart(month, DATE2) = 1
update sales set MONTHNAME_ = '02.subat' where DATEpart(month, DATE2) = 2
update sales set MONTHNAME_ = '03.mart' where DATEpart(month, DATE2) = 3
update sales set MONTHNAME_ = '04.nisan' where DATEpart(month, DATE2) = 4
update sales set MONTHNAME_ = '05mayis' where DATEpart(month, DATE2) = 5
update sales set MONTHNAME_ = '06.haziran' where DATEpart(month, DATE2) = 6
update sales set MONTHNAME_ = '07.temmuz' where DATEpart(month, DATE2) = 7
update sales set MONTHNAME_ = '08.agustos' where DATEpart(month, DATE2) = 8
update sales set MONTHNAME_ = '09.eylul' where DATEpart(month, DATE2) = 9
update sales set MONTHNAME_ = '10.ekim' where DATEpart(month, DATE2) = 10
update sales set MONTHNAME_ = '11.kasim' where DATEpart(month, DATE2) = 11
update sales set MONTHNAME_ = '12.aralik' where DATEpart(month, DATE2) = 12

select CITY, MONTHNAME_,
sum(TOTALPRICE) as Totalprice 
from SALES

group by CITY, MONTHNAME_
ORDER BY CITY, MONTHNAME_

select CATEGORY1, CATEGORY2, CATEGORY3, 
sum(TOTALPRICE) as TOTALPRICE
from SALES

group by CATEGORY1, CATEGORY2, CATEGORY3

order by CATEGORY1, CATEGORY2, CATEGORY3


select CITY ,
count(DISTINCT FICHENO)
from SALES


where MONTHNAME_ = '01.ocak'

group by CITY
Order by cýty

select CITY,
sum(TOTALPRICE) as totalprýce 
from SALES


group by CITY
having sum(TOTALPRICE) > 300000

order by CITY /* having agregate komutlarýný þart olarak kullanmamýzý saðlar*/ 

