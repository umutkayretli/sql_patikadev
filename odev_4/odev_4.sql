/*film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.*/
SELECT DISTINCT replacement_cost FROM film

/*film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?*/
SELECT count(DISTINCT replacement_cost) FROM film 

/*film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?*/
SELECT title,rating FROM film WHERE title LIKE 'T%' and rating = 'G'

/*country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?*/
SELECT count(*) FROM country WHERE length(country) = 5

/*city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?*/
SELECT * FROM city WHERE city ILIKE '%r'