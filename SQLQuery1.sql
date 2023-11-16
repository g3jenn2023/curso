


select * from tmp_feminicidio_concentrado where hechos_fecha >= '20230101';


	   with 
fecha as (
select year(fecha) anio, month(fecha) mes
  from (select min(hechos_fecha) fecha from tmp_feminicidio_concentrado) q
)
,
consecutivo as (
select row_number() over (order by (select null)) n
   from sys.all_columns
)
,
mes as (
select *
  from (values (1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (11), (12)
       ) q1 (mes)
)
,
aniomes as (
select consecutivo.n anio, mes.mes
  from consecutivo
       cross join mes
       cross join fecha
 where consecutivo.n * 100 + mes.mes between fecha.anio * 100 + fecha.mes and year(getdate()) * 100 + month(getdate())
)
select aniomes.anio, aniomes.mes, count(id) Contador
  from aniomes
       left join tmp_feminicidio_concentrado on year(hechos_fecha) = aniomes.anio and month(hechos_fecha) = aniomes.mes
 group by aniomes.anio, aniomes.mes
 order by anio, mes;




with 
anio as (
select *
  from (values (2023)
       ) q1 (anio)
)
,
mes as (
select *
  from (values (1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (11), (12)
       ) q1 (mes)
)
select anio, mes  
  from anio
       cross join mes;