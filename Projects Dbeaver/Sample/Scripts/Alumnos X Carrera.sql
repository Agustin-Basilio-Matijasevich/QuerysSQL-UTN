select Nombre, NombreCarrera  from sample.alumno_carrera ac, sample.carrera c, sample.alumno a  
where CodCarreraFKPK = CodCarreraPK and DNIFKPK = DNI
order by Nombre;