--1
select naam
from Boek
join Auteur on Boek.auteur_id = Auteur.Auteur_id
group by Naam
having max(jaar) - min(jaar) > 5

--2
select categorie, count(*) as aantal
from Boek
join Categorie on boek.cat_id = Categorie.cat_id
group by categorie
having COUNT(*) > 6

--3
select top 3 datum
from Uitleen
Order by datum

--4
select naam
from Auteur

