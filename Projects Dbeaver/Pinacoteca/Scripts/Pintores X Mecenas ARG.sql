#Listar nombres de pintores argentinos o mecenas que apoyaron a pintores argentinos

select null as Pintor, Apellido_Nombre as Nombre_Pintor, p.Ciudad, null as Mecena, Nombre as Nombre_Mecena, m.Pais, m.Ciudad
from pintor p, mecena m, mecena_pintor mp
where p.Pais = 'Argentina' and m.ID = mp.ID_Mecena and p.ID = mp.ID_Pintor
order by Apellido_Nombre asc, Nombre asc;