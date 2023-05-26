create table alumnos_tesoem (id number (3) unique,
Matricula number (9),
Nombre varchar2 (30),
Apell_pa varchar2 (30),
Apell_ma varchar2 (30),
Carrera varchar2 (30),
Grupo varchar2 (5),
Semestre number (2),
Check (Semestre <=9),
Edificio varchar2 (1),
Promedio number (3));

alter table alumnos_tesoem 
add primary key (Matricula);

delete from alumnos_tesoem;

select * from alumnos_tesoem;

 create or replace procedure pa_insert_alumnos
(m_id in number default 0,m_Matricula in number default 0, m_Nombre in varchar2 default 'nombre', m_Apell_pa in varchar2 default 'apellido_pa', m_Apell_ma in varchar2 default 'apellido_ma',
 m_Carrera in varchar2 default 'carrera', m_Grupo in varchar2 default '0000', m_Semestre in number default 1, m_Edificio in varchar2 default '#', 
 m_Promedio in number default 0)
 as 
 begin 
 insert into alumnos_tesoem values (m_id,m_Matricula, m_Nombre, m_Apell_pa, m_Apell_ma, m_Carrera, m_Grupo,m_Semestre, m_Edificio, m_promedio);
 end;
 
 execute pa_insert_alumnos (1,206020051,'Juan Pablo','Espinosa','Rodríguez','ISC','6S11',6 ,'A' , 92); 
 
 ---Join primer semestre-----
 select * from ISC a JOIN TICS b on a.grupo like '1%' and b.grupo like '1%' join LC c on c.grupo like '1%' join LG d on d.grupo like '1%' 
 join IND e on e.grupo like '1%' join IER f on f.grupo like '1%' join IAD g on g.grupo like '1%'
 join ISA h on h.grupo like '1%' join IA i on i.grupo like '1%'; 
  ---Join segundo semestre-----
 select * from ISC a JOIN TICS b on a.grupo like '2%' and b.grupo like '2%' join LC c on c.grupo like '2%' join LG d on d.grupo like '2%' 
 join IND e on e.grupo like '2%' join IER f on f.grupo like '2%' join IAD g on g.grupo like '2%'
 join ISA h on h.grupo like '2%' join IA i on i.grupo like '2%'; 
   ---Join tercer semestre-----
 select * from ISC a JOIN TICS b on a.grupo like '3%' and b.grupo like '3%' join LC c on c.grupo like '3%' join LG d on d.grupo like '3%' 
 join IND e on e.grupo like '3%' join IER f on f.grupo like '3%' join IAD g on g.grupo like '3%'
 join ISA h on h.grupo like '3%' join IA i on i.grupo like '3%'; 
   ---Join cuarto semestre-----
 select ID, Nombre_Alumno, grupo from ISC a JOIN TICS b on a.grupo like '4%' and b.grupo like '4%' join LC c on c.grupo like '4%' join LG d on d.grupo like '4%' 
 join IND e on e.grupo like '4%' join IER f on f.grupo like '4%' join IAD g on g.grupo like '4%'
 join ISA h on h.grupo like '4%' join IA i on i.grupo like '4%'; 
   ---Join quinto semestre-----
   select * from ISC;
 select  * from ISC a JOIN TICS b on a.Grupo like '6S11' and b.Grupo like '6T11';   
 select  * from ISC a JOIN TICS b on a.grupo like '5%' and b.grupo like '5%' join LC c on c.grupo like '5%' join LG d on d.grupo like '5%'
 join IND e on e.grupo like '5%' join IER f on f.grupo like '5%' join IAD g on g.grupo like '5%'
 join ISA h on h.grupo like '5%' join IA i on i.grupo like '5%'; 
    ---Join sexto semestre-----
 select * from ISC a JOIN TICS b on a.Grupo like '6' and b.Grupo like '6' join LC c on c.Grupo like '6' join LG d on d.Grupo like '6' 
 join IND e on e.Grupo like '6' join IER f on f.Grupo like '6' join IAD g on g.Grupo like '6'
 join ISA h on h.Grupo like '6' join IA i on i.Grupo like '6'; 
    ---Join septimo semestre-----
 select ID, Nombre_Alumno, grupo from ISC a JOIN TICS b on a.grupo like '7%' and b.grupo like '7%' join LC c on c.grupo like '7%' join LG d on d.grupo like '7%' 
 join IND e on e.grupo like '7%' join IER f on f.grupo like '7%' join IAD g on g.grupo like '7%'
 join ISA h on h.grupo like '7%' join IA i on i.grupo like '7%'; 
  ---Join septimo semestre-----
  select ID, Nombre_Alumno, grupo from ISC a JOIN TICS b on a.grupo like '8%' and b.grupo like '8%' join LC c on c.grupo like '8%' join LG d on d.grupo like '8%' 
 join IND e on e.grupo like '8%' join IER f on f.grupo like '8%' join IAD g on g.grupo like '8%'
 join ISA h on h.grupo like '8%' join IA i on i.grupo like '8%';
   ---Join septimo semestre-----
  select ID, Nombre_Alumno, grupo from ISC a JOIN TICS b on a.grupo like '9%' and b.grupo like '9%' join LC c on c.grupo like '9%' join LG d on d.grupo like '9%' 
 join IND e on e.grupo like '9%' join IER f on f.grupo like '9%' join IAD g on g.grupo like '9%'
 join ISA h on h.grupo like '9%' join IA i on i.grupo like '9%'; 
 
 ------------------------------------Ingeniería en Sistemas Computacionales--ISC----------------------
 create table ISC(id number (3),
 Matricula number (9),
 Nombre_Alumno varchar2 (50),
 Grupo varchar2 (4),
 Edificio varchar2 (1));
 
create or replace procedure pa_alumnos_ISC
as
begin
insert into ISC (id, matricula, Nombre_Alumno, Grupo, Edificio)
select id, Matricula, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma, Grupo, Edificio  from alumnos_tesoem -- Agregar espacio entre nombre y apellidos 
where Carrera = 'ISC';
end;

execute pa_alumnos_ISC;

select* from ISC ;

delete from ISC;
---------------Ingeniería en Tecnologías de la Información y Comunicaciones---TICS----------------------------
create table TICS(id number (3),
 Matricula number (9),
 Nombre_Alumno varchar2 (50),
 Grupo varchar2 (4),
 Edificio varchar2 (1));

create or replace procedure pa_alumnos_TICS
as
begin
insert into TICS (id, matricula, Nombre_Alumno, Grupo, Edificio)
select id, Matricula,Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma, Grupo, Edificio  from alumnos_tesoem -- Agregar espacio entre nombre y apellidos 
where Carrera = 'TICS'; 
end;

execute pa_alumnos_TICS;

select* from TICS;

delete from TICS;
---------------------------------Licenciatura Contador Público--LC--------------------------------------------
create table LC(id number (3),
 Matricula number (9),
 Nombre_Alumno varchar2 (50),
 Grupo varchar2 (4),
 Edificio varchar2 (1));

create or replace procedure pa_alumnos_LC
as
begin
insert into LC (id, matricula, Nombre_Alumno, Grupo, Edificio)
select id, Matricula, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma, Grupo, Edificio  from alumnos_tesoem -- Agregar espacio entre nombre y apellidos 
where Carrera = 'LC';
end;

execute pa_alumnos_LC;

select* from LC;

delete from LC;

--------------------------------Licenciatura en Gastronomía--LG---------------------------------

create table LG(id number (3),
 Matricula number (9),
 Nombre_Alumno varchar2 (50),
 Grupo varchar2 (4),
 Edificio varchar2 (1));
 
create or replace procedure pa_alumnos_LG
as
begin
insert into LG (id, matricula, Nombre_Alumno, Grupo, Edificio)
select id, Matricula, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma, Grupo, Edificio  from alumnos_tesoem -- Agregar espacio entre nombre y apellidos 
where Carrera = 'LG';
end;

execute pa_alumnos_LG;

select* from LG;

delete from LG;

--------------------------------------------Ingenieria Industrial--IND-------------------------------
create table IND(id number (3),
 Matricula number (9),
 Nombre_Alumno varchar2 (50),
 Grupo varchar2 (4),
 Edificio varchar2 (1));
 
create or replace procedure pa_alumnos_IND
as
begin
insert into IND (id, matricula, Nombre_Alumno, Grupo, Edificio)
select id, Matricula, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma , Grupo, Edificio  from alumnos_tesoem -- Agregar espacio entre nombre y apellidos 
where Carrera = 'IND';
end;
execute pa_alumnos_IND;

select* from IND;

delete from IND;

--------------------------------Ingeniería en Energias Renovables--IER----------------------------------------
create table IER(id number (3),
 Matricula number (9),
 Nombre_Alumno varchar2 (50),
 Grupo varchar2 (4),
 Edificio varchar2 (1)); 
 
create or replace procedure pa_alumnos_IER
as
begin
insert into IER (id, matricula, Nombre_Alumno, Grupo, Edificio)
select id, Matricula, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma , Grupo, Edificio  from alumnos_tesoem -- Agregar espacio entre nombre y apellidos 
where Carrera = 'IER';
end;

execute pa_alumnos_IER;

select* from IER;

delete from IER;

----------------------------Ingeniería en Administración--IAD--------------------------------------------

create table IAD(id number (3),
 Matricula number (9),
 Nombre_Alumno varchar2 (50),
 Grupo varchar2 (5),
 Edificio varchar2 (1));
 
create or replace procedure pa_alumnos_IAD
as
begin
insert into IAD (id, matricula, Nombre_Alumno, Grupo, Edificio)
select id, Matricula, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma , Grupo, Edificio  from alumnos_tesoem -- Agregar espacio entre nombre y apellidos 
where Carrera = 'IAD';
end;

execute pa_alumnos_IAD;

select* from IAD;

delete from IAD;

----------------------------Ingeniería en Sistemas Automotrices-ISA---------------------------------------

create table ISA(id number (3),
 Matricula number (9),
 Nombre_Alumno varchar2 (50),
 Grupo varchar2 (5),
 Edificio varchar2 (1));
 
create or replace procedure pa_alumnos_ISA
as
begin
insert into ISA (id, matricula, Nombre_Alumno, Grupo, Edificio)
select id, Matricula, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma , Grupo, Edificio  from alumnos_tesoem -- Agregar espacio entre nombre y apellidos 
where Carrera = 'ISA';
end;

execute pa_alumnos_ISA;

select* from ISA;

delete from ISA;
----------------------------------Ingeniería Ambiental--IA------------------------------------------
 create table IA(id number (3),
 Matricula number (9),
 Nombre_Alumno varchar2 (50),
 Grupo varchar2 (5),
 Edificio varchar2 (1));
 
create or replace procedure pa_alumnos_IA
as
begin
insert into IA (id, matricula, Nombre_Alumno, Grupo, Edificio)
select id, Matricula, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma , Grupo, Edificio  from alumnos_tesoem -- Agregar espacio entre nombre y apellidos 
where Carrera = 'IA';
end;

execute pa_alumnos_IA;

select * from IA;

delete from IA;


SELECT * from alumnos_tesoem
where Semestre=2;

------------------------------------------Aqui acaba el primer ejercicio------------------------------------

create table profesores_tesoem (id number not null unique,
Num_empleado number (9) ,
Nombre varchar2 (30),
Apell_pa varchar2 (30),
Apell_ma varchar2 (30),
Carrera varchar2 (30),
Nombre_clase varchar  (60),
grupo varchar (5));

alter table profesores_tesoem 
add primary key (id);

select * from profesores_tesoem;

delete from profesores_tesoem;

create or replace procedure pa_insert_maestros
(m_id in number default 0, m_Num_empleado in number default 0, m_nombre in varchar2 default 'nombre', m_Apell_pa in varchar2 default 'apellido_pa', 
 m_Apell_ma in varchar2 default 'apellido_ma', m_carrera in varchar2 default 'carrera', m_Nombre_clase in varchar2 default 'clase', m_grupo in varchar2 default 'grupo')
 as 
 begin 
 insert into profesores_tesoem values (m_id,m_Num_empleado, m_nombre, m_Apell_pa, m_Apell_ma, m_carrera, m_Nombre_clase, m_grupo);
 end;
 
 execute pa_insert_maestros (1,760,'Oscar Abimael','Sanchez','De los Santos','ISC','Fundamentos de Base de Datos','4S11');

 create table profes_ISC(id number not null unique,
Num_empleado number (9) ,
Nombre_completo varchar2 (60),
Carrera varchar2 (30),
Nombre_clase varchar  (60),
grupo varchar (5));
 
create or replace procedure pa_profes_ISC
as
begin
insert into  profes_ISC (id, Num_empleado, Nombre_completo, Carrera, Nombre_clase,grupo)
select id, Num_empleado, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma, Carrera, Nombre_clase,grupo  from profesores_tesoem 
where Carrera = 'ISC';
end;

execute pa_profes_ISC;

select* from profes_ISC;

delete from profes_ISC;

------------Ingeniería en Tecnologías de la Información y Comunicaciones---TICS----------------------

create table profes_TICS(id number not null unique,
Num_empleado number (9) ,
Nombre_completo varchar2 (60),
Carrera varchar2 (30),
Nombre_clase varchar  (60),
grupo varchar (5));

create or replace procedure pa_profes_TICS
as
begin
insert into profes_TICS (id, Num_empleado, Nombre_completo, Carrera, Nombre_clase,grupo)
select id, Num_empleado, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma, Carrera, Nombre_clase,grupo  from profesores_tesoem 
where Carrera = 'TICS';
end;

execute pa_profes_TICS;

select* from profes_TICS;

delete from profes_TICS;
-------------------------Licenciatura Contador Público----LC------------------------------

create table profes_LC(id number not null unique,
Num_empleado number (9) ,
Nombre_completo varchar2 (60),
Carrera varchar2 (30),
Nombre_clase varchar  (60),
grupo varchar (5));

create or replace procedure pa_profes_LC
as
begin
insert into profes_LC (id, Num_empleado, Nombre_completo, Carrera, Nombre_clase,grupo)
select id, Num_empleado, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma, Carrera, Nombre_clase,grupo  from profesores_tesoem 
where Carrera = 'LC';
end;

execute pa_profes_LC;

select* from profes_LC;

delete from profes_LC;

-----------------------------Licenciatura en Gastronomía-----------------LG--------------------------
create table profes_LG(id number not null unique,
Num_empleado number (9) ,
Nombre_completo varchar2 (60),
Carrera varchar2 (30),
Nombre_clase varchar  (60),
grupo varchar (5));
 
create or replace procedure pa_profes_LG
as
begin
insert into profes_LG (id, Num_empleado, Nombre_completo, Carrera, Nombre_clase,grupo)
select id, Num_empleado, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma, Carrera, Nombre_clase,grupo  from profesores_tesoem 
where Carrera = 'LG';
end;

execute pa_profes_LG;

select* from profes_LG;

delete from profes_LG;

--------------------------------------------Ingenieria Industrial--IND---------------------------------
create table profes_IND(id number not null ,
Num_empleado number (9) ,
Nombre_completo varchar2 (60),
Carrera varchar2 (30),
Nombre_clase varchar  (60),
grupo varchar (5));
 
create or replace procedure pa_profes_IND
as
begin
insert into profes_IND (id, Num_empleado, Nombre_completo, Carrera, Nombre_clase,grupo)
select id, Num_empleado, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma, Carrera, Nombre_clase,grupo  from profesores_tesoem 
where Carrera = 'IND';
end;
execute pa_profes_IND;

select* from profes_IND;

delete from profes_IND;

drop table profes_IND;

----------------------Ingeniería en Energias Renovables--IER-----------------------------
create table profes_IER(id number not nulL,
Num_empleado number (9) ,
Nombre_completo varchar2 (60),
Carrera varchar2 (30),
Nombre_clase varchar  (60),
grupo varchar (5));
 
create or replace procedure pa_profes_IER
as
begin
insert into profes_IER (id, Num_empleado, Nombre_completo, Carrera, Nombre_clase,grupo)
select id, Num_empleado, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma, Carrera, Nombre_clase,grupo  from profesores_tesoem 
where Carrera = 'IER';
end;

execute pa_profes_IER;

select* from profes_IER;

drop table profes_IER;

delete from profes_IER;

--------------------------Ingeniería en Administración--IAD--------------------------------------------
create table profes_IAD(id number not null unique,
Num_empleado number (9) ,
Nombre_completo varchar2 (60),
Carrera varchar2 (30),
Nombre_clase varchar  (60),
grupo varchar (5));
 
create or replace procedure pa_profes_IAD
as
begin
insert into profes_IAD (id, Num_empleado, Nombre_completo, Carrera, Nombre_clase,grupo)
select id, Num_empleado, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma, Carrera, Nombre_clase,grupo  from profesores_tesoem 
where Carrera = 'IAD';
end;

execute pa_profes_IAD;

select* from profes_IAD;

delete from profes_IAD;

----------------Ingeniería en Sistemas Automotrices--ISA-------------COMPLETO-------------------------------
create table profes_ISA(id number not null unique,
Num_empleado number (9) ,
Nombre_completo varchar2 (60),
Carrera varchar2 (30),
Nombre_clase varchar  (60),
grupo varchar (5));
 
create or replace procedure pa_profes_ISA
as
begin
insert into profes_ISA (id, Num_empleado, Nombre_completo, Carrera, Nombre_clase,grupo)
select id, Num_empleado, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma, Carrera, Nombre_clase,grupo  from profesores_tesoem 
where Carrera = 'ISA';
end;

execute pa_profes_ISA;

select* from profes_ISA;

delete from profes_ISA;

------------------------------Ingeniería Ambiental--IA---------------------------------------
 create table profes_IA(id number not null unique,
Num_empleado number (9) ,
Nombre_completo varchar2 (60),
Carrera varchar2 (30),
Nombre_clase varchar  (60),
grupo varchar (5));
 
create or replace procedure pa_profes_IA
as
begin
insert into profes_IA (id, Num_empleado, Nombre_completo, Carrera, Nombre_clase,grupo)
select id, Num_empleado, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma, Carrera, Nombre_clase,grupo  from profesores_tesoem  
where Carrera = 'IA';
end;

execute pa_profes_IA;

select * from profes_IA;

delete from profes_IA; 

 ------------------------------------Aqui acaba el ejercicio 2--------------------------------------

 ------------------------Alumnos con beca al 100% de aprovechamiento-----95-100-----------------------
create table cien_porciento ( id number (3) unique,
Matricula number (9),
Nombre_Alumno varchar2 (60),
Carrera varchar2 (30),
Semestre number (2),
Check (Semestre <=9),
Promedio number (3));

create or replace PROCEDURE pa_cien_porciento
as
begin
insert into cien_porciento (id, matricula, Nombre_Alumno, Carrera, Semestre, Promedio)
select id, Matricula, Nombre ||' '|| Apell_pa ||' '||  Apell_ma, Carrera, Semestre, Promedio  from alumnos_tesoem 
where Promedio >=95;
end;

execute pa_cien_porciento;

select* from cien_porciento;

delete from cien_porciento;

 ----------------------Alumnos con beca al 75% de aprovechamiento-----92-94--------------------------
create table setentaycinco_porciento ( id number (3) unique,
Matricula number (9),
Nombre_Alumno varchar2 (60),
Carrera varchar2 (30),
Semestre number (2),
Check (Semestre <=9),
Promedio number (3));

create or replace PROCEDURE pa_setentaycinco_porciento
as
begin
insert into setentaycinco_porciento (id, matricula, Nombre_Alumno, Carrera, Semestre, Promedio)
select id, Matricula, Nombre ||' '|| Apell_pa ||' '||  Apell_ma, Carrera, Semestre, Promedio  from alumnos_tesoem 
where Promedio >=92 and Promedio <95;
end;

execute pa_setentaycinco_porciento;

select* from setentaycinco_porciento;

delete from setentaycinco_porciento;

-------------------------Alumnos con beca al 50% de aprovechamiento-----90-91----------------------------------
create table cincuenta_porciento ( id number (3) unique,
Matricula number (9),
Nombre_Alumno varchar2 (60),
Carrera varchar2 (30),
Semestre number (2),
Check (Semestre <=9),
Promedio number (3));

create or replace PROCEDURE pa_cincuenta_porciento
as
begin
insert into cincuenta_porciento (id, matricula, Nombre_Alumno, Carrera, Semestre, Promedio)
select id, Matricula, Nombre ||' '|| Apell_pa ||' '||  Apell_ma, Carrera, Semestre, Promedio  from alumnos_tesoem 
where Promedio >=90 and Promedio <92;
end;

execute pa_cincuenta_porciento;

select* from cincuenta_porciento;

delete from cincuenta_porciento;

 -----------------------Alumnos con beca al 35% de aprovechamiento-----87-89----------------------------------
create table treintaycinco_porciento ( id number (3) unique,
Matricula number (9),
Nombre_Alumno varchar2 (60),
Carrera varchar2 (30),
Semestre number (2),
Check (Semestre <=9),
Promedio number (3));

create or replace PROCEDURE pa_treintaycinco_porciento
as
begin
insert into treintaycinco_porciento (id, matricula, Nombre_Alumno, Carrera, Semestre, Promedio)
select id, Matricula, Nombre ||' '|| Apell_pa ||' '||  Apell_ma, Carrera, Semestre, Promedio  from alumnos_tesoem 
where Promedio >=87 and Promedio <90;
end;

execute pa_treintaycinco_porciento;

select* from treintaycinco_porciento;

delete from treintaycinco_porciento;

 --------------------------------Alumnos con beca al 25% de aprovechamiento-----84-86------------------------
create table veinticinco_porciento ( id number (3) unique,
Matricula number (9),
Nombre_Alumno varchar2 (60),
Carrera varchar2 (30),
Semestre number (2),
Check (Semestre <=9),
Promedio number (3));

create or replace PROCEDURE pa_veinticinco_porciento
as
begin
insert into veinticinco_porciento (id, matricula, Nombre_Alumno, Carrera, Semestre, Promedio)
select id, Matricula, Nombre ||' '|| Apell_pa ||' '||  Apell_ma, Carrera, Semestre, Promedio  from alumnos_tesoem 
where Promedio >=84 and Promedio <87;
end;

execute pa_veinticinco_porciento;

select* from veinticinco_porciento;

delete from veinticinco_porciento;

 -------------------------Alumnos con beca al 10% de aprovechamiento-----80-83-----------------------
create table diez_porciento ( id number (3) unique,
Matricula number (9),
Nombre_Alumno varchar2 (60),
Carrera varchar2 (30),
Semestre number (2),
Check (Semestre <=9),
Promedio number (3));

create or replace PROCEDURE pa_diez_porciento
as
begin
insert into diez_porciento (id, matricula, Nombre_Alumno, Carrera, Semestre, Promedio)
select id, Matricula, Nombre ||' '|| Apell_pa ||' '||  Apell_ma, Carrera, Semestre, Promedio  from alumnos_tesoem 
where Promedio >=80 and Promedio <84;
end;

execute pa_diez_porciento;

select* from diez_porciento;

delete from diez_porciento;
 --------------Alumnos sin beca de aprovechamiento-----0-79------------------------------------------
create table cero_porciento ( id number (3) unique,
Matricula number (9),
Nombre_Alumno varchar2 (60),
Carrera varchar2 (30),
Semestre number (2),
Check (Semestre <=9),
Promedio number (3));

create or replace PROCEDURE pa_cero_porciento
as
begin
insert into cero_porciento (id, matricula, Nombre_Alumno, Carrera, Semestre, Promedio)
select id, Matricula, Nombre ||' '|| Apell_pa ||' '||  Apell_ma, Carrera, Semestre, Promedio  from alumnos_tesoem 
where Promedio <80;
end;

execute pa_cero_porciento;

select* from cero_porciento;

delete from cero_porciento;
-----------------------------------Aqui acaba el ejercicio 3---------------------------------
