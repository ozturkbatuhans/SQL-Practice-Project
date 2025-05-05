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
	
	