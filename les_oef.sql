--oef1
select  titel, naam
from Auteur
	join boek on Auteur.Auteur_id = Boek.auteur_id

select  titel, naam
from boek
	join Auteur on Auteur.Auteur_id = Boek.auteur_id

--oef2
select titel, naam, uitgever
from boek
	join Auteur on Auteur.Auteur_id = Boek.auteur_id
	join Uitgever on uitgever.uitg_id = Boek.uitg_id

select titel, naam, uitgever
from boek
	join Uitgever on uitgever.uitg_id = Boek.uitg_id
	join Auteur on Auteur.Auteur_id = Boek.auteur_id

select titel, naam, uitgever
from Uitgever
	join boek on uitgever.uitg_id = Boek.uitg_id
	join Auteur on Auteur.Auteur_id = Boek.auteur_id

select titel, naam, uitgever
from Auteur
	join boek on Auteur.Auteur_id = Boek.auteur_id
	join Uitgever on uitgever.uitg_id = Boek.uitg_id

--oef6
select max(klantnaam) from klant --> de alfabetisch gezien laatste naam van de klant
select left(max(klantnaam),1) from klant

select left(klantnaam,1) from klant
where klantnaam = (
	select max(klantnaam) from klant)

--oef7
select avg(len(klantnaam)), max(len(klantnaam)) from Klant