select concat(FirstName, " ", LastName) as Nombre , PhoneNumber as Telefono 
from person_person pp , person_personphone pp2 
where pp.BusinessEntityID = pp2.BusinessEntityID 
order by Nombre asc ;