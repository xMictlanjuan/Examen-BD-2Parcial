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
 execute pa_insert_alumnos (2,201020058,'Silvia','Rodriguez','Villa','LC','6C21',6 ,'I' , 86); 
 execute pa_insert_alumnos (3,227020003,'Dylan Antonio','Granillo',	'González','TICS','2T11',2,	'E', 91);
 execute pa_insert_alumnos (4,206020008,'Evelin Lizet','Cruz','Martínez','ISC','6S12',6,'B',91);
 execute pa_insert_alumnos (5,206020047,'Ariana Estefania','Rodriguez','Monroy','ISC','6S12',6,'B',90);
 execute pa_insert_alumnos (6,220020151,'Andrea','Pacheco','Galindo','LG','2G11',2,'C',93);
 execute pa_insert_alumnos (7,213010021,'Emmanuel','López','Nicolás','IND','4I11',4,'F',93);
 execute pa_insert_alumnos (8,210010034,'Denisse Elizabeth','Guzmán','Godínez','LG','5G11',5,'B',80);
 execute pa_insert_alumnos (9,200020046,'Alexander','Aguilar','Velazquez','LG','6G11',6,'D',91);
 execute pa_insert_alumnos (10,200020008,'Ariana Yamily','Sandoval','Torres','LG','6G11',6,'D',95);
 execute pa_insert_alumnos (11,205020005,'Luis Alberto','Santiago','García','IER','6E11',6,'I',86);
 execute pa_insert_alumnos (12,220020210,'Kevin','Gonzales','Godinez','LG','6G11',6,'D',89);
 execute pa_insert_alumnos (13,205020001,'Guadalupe','Hernández','Cruz','IER','6E11',6,'I',83);
 execute pa_insert_alumnos (14,20002011,'Kevin Aron','Juarez','Juarez','LG','6G11',6,'D',81);
 execute pa_insert_alumnos (15,202020101,'Hector Enrique','	Megana','Quesada','IAD','6AD12',6,'D',87);
 execute pa_insert_alumnos (16,220020040,'Carlos Yael','Jimenez','Chirino','LG','2G22',2,'C',86);
 execute pa_insert_alumnos (17,219020014,'Jorge Eduardo','Martinez','Martinez','ISA','4SA11',4,'F',91);
 execute pa_insert_alumnos (18,219020019,'Uriel','Mendoza','Loza','ISC','3S11',3,'B',70);
 execute pa_insert_alumnos (19,206010028,'Cristian Alejandro','Romero','Rojano','ISC','7S11',7,'B',93);
 execute pa_insert_alumnos (20,206020028,'Brayan','Rodríguez','Rodríguez','ISC','6S11',6,'A',94);
 execute pa_insert_alumnos (21,212020059,'Karla Michelle','Hernandez','Orozco','IAD','4AD12',4,'D',80);
 execute pa_insert_alumnos (22,222010001,'Sandra Lizbeth','Arrieta','Torales','IAD','3AD11',3,'D',95);
 execute pa_insert_alumnos (23,222010012,'Leonardo','Lobaton','Vazquez','IAD','3AD11',3,'D',87);
 execute pa_insert_alumnos (24,200200151,'Andrea','Pacheco','Galindo','LG','2G11',2,'C',93);
 execute pa_insert_alumnos (25,216020086,'Alexis','Gomez','Medina','ISC','3S11',3,'B',80);
 execute pa_insert_alumnos (26,220010014,'Juan Sebastian','Marin','Robles','IAD','3AD11',3,'D',80);
 execute pa_insert_alumnos (27,192020028,'Itzel','Montalvo','Arano','IAD','5AD11',5,'D',83);
 execute pa_insert_alumnos (28,206020014,'Luis Alfredo','Guzmán','Collado','ISC','6S11',6,'A',70);
 execute pa_insert_alumnos (29,214020146,'Kate Leslie','De la rosa','Chavez','IA','8A12',8,'H',80);
 execute pa_insert_alumnos (30,193020078,'Jeny Guadalupe','Cruz','Leal','IND','6I12',6,'F',82);
 execute pa_insert_alumnos (31,192010026,'Albertossi De Jesus','Landeros','Gomes','IAD','8AD11',8,'E',80);
 execute pa_insert_alumnos (32,230010037,'Angel Guadalupe','Vazquez','Castillo','LG','1G21',1,'D',78);
 execute pa_insert_alumnos (33,2010253,'Miriam','Rojas','Nicolas','LC','6C11',6,'I',76);
 execute pa_insert_alumnos (34,201020074,'Evelin','Cruz','Herrera','LC','6C11',6,'I',90);
 execute pa_insert_alumnos (35,203020077,'Eduardo Jesús','Garcia','Ferreira','IND','6I12',6,'E',83);
 execute pa_insert_alumnos (36,186010117,'Angel Rafael','Mercado','Martinez','ISC','4S21',4,'A',83);
 execute pa_insert_alumnos (37,216020104,'Mariana','Valdes','Munguía','ISC','4S21',4,'A',85);
 execute pa_insert_alumnos (38,195020004,'Jesús Uriel','Valdez','Bobadilla','IER','7E11',7,'I',91);
 execute pa_insert_alumnos (39,102010014,'Juan de Dios','Sánchez','Durán','IND','7I11',7,'F',95);
 execute pa_insert_alumnos (40,239010023,'Andy Alberto','Sarmiento','Astudillo','ISA','1SA11',1,'E',87);	
 execute pa_insert_alumnos (41,239010035,'Israel','Legorreta','Dominguez','ISA','1SA11',1,'E',75);	
 execute pa_insert_alumnos (42,224020038,'Josué Azdhriel','Morales','Perez','ISA','2SA11',2,'D',87);
 execute pa_insert_alumnos (43,229020029,'Bruno','Esquivel','Bautista','ISA','2SA11',2,'D',82);
 execute pa_insert_alumnos (44,219020058,'Armando','Mercado','Lopez','ISA','4SA11',4,'E',82);
 execute pa_insert_alumnos (45,229020085,'Gibran Andres','Robledo','Barron','ISA','2SA11',2,'D',86);
 execute pa_insert_alumnos (46,219020038,'Arturo Natanael','Serrano','Galindo','ISA','4SA11',4,'E',76);
 execute pa_insert_alumnos (47,229020066,'Misael','García','Galicia','ISA','2SA11',2,'D',87);
 execute pa_insert_alumnos (48,229020043,'Angel','Santillan','Coria','ISA','2SA11',2,'D',80);
 execute pa_insert_alumnos (49,193020111,'José Raúl','Neri','Jiménez','IND','8I12',8,'F',84);
 execute pa_insert_alumnos (50,223020023,'Barrón','Mora','Israel','IND','2I11',2,'E',85);
 execute pa_insert_alumnos (51,223020004,'Ricardo','Juárez','Arrieta','IND','2I11',2,'E',85);
 execute pa_insert_alumnos (52,223020008,'Jonathan','Ramírez','Islas','IND','2I11',2,'E',89);
 execute pa_insert_alumnos (53,201020065,'Jonathan','Duran','Ildefonso','LC','6C11',6,'I',78);
 execute pa_insert_alumnos (54,20102002,'Luis Armando','Díaz','Islas','LC','6C11',6,'I',82);
 execute pa_insert_alumnos (55,220020034,'Victor Hugo','Centeno','García','LG','2G11',2,'C',89);
 execute pa_insert_alumnos (56,215020014,'Erick Alejandro','Martinez','Ordaz','IER','2E11',2,'I',70);
 execute pa_insert_alumnos (57,183010096,'Erik Mauricio','Sanchez','Cruz','IND','8I12',8,'F',80);
 execute pa_insert_alumnos (58,201020020,'Karen','Alvarado','Luna','LC','6C11',6,'I',85);
 execute pa_insert_alumnos (59,223020028,'Ivan Yael','Mendoza','Xihuilt','IND','2I11',2,'E',87);
 execute pa_insert_alumnos (60,224020036,'Luis Orlando','Rojas','Limón','IA','2A11',2,'H',86);
 execute pa_insert_alumnos (61,201020017,'Ana Cristy','Alfaro','De Jesus','LC','6C21',6,'I',82);
 execute pa_insert_alumnos (62,201020034,'Carlos Alberto','Largo','Camacho','LC','6C21',6,'I',80);
 execute pa_insert_alumnos (63,207010011,'Dulce Maria','Ortiz','Reyes','TICS','7T11',7,'E',91);
 execute pa_insert_alumnos (64,207010014,'Pamela','Perez','Ayala','TICS','7T11',7,'E',88);
 execute pa_insert_alumnos (65,207010006,'Angel Gabriel','Hernández','Garcia','TICS','7T11',7,'E',93);
 execute pa_insert_alumnos (66,217010003,'Pablo Uriel','Paz','Zuñiga','TICS','5T11',5,'E',88);
 execute pa_insert_alumnos (67,215020003,'Alexis','Carbajal','Gómez','IER','4E11',4,'I',86);
 execute pa_insert_alumnos (68,215020004,'Monica Valeria','Huerta','García','IER','4E11',4,'I',96);
 execute pa_insert_alumnos (69,215020002,'Karen Citlali','Arenas','Carmona','IER','4E11',4,'I',94);
 execute pa_insert_alumnos (70,202020082,'Blanca Flor','Albarran','Flor','IAD','6AD12',6,'D',90);
 execute pa_insert_alumnos (71,202020091,'Mariana Yaquelin','Becerra','Flores','IAD','6AD12',6,'D',95);
 execute pa_insert_alumnos (72,202020096,'Gabriela Jocelin','Cadena','Castro','IAD','6AD12',6,'D',87);
 execute pa_insert_alumnos (73,215020017,'Luis Alfredo','Torres','Hernández','IER','4E11',4,'I',83);
 execute pa_insert_alumnos (74,225020006,'Kevin Uriel','Rodríguez','Aguilar','IER','2E11',2,'I',94);
 execute pa_insert_alumnos (75,215020001,'Ricardo','García','López','IER','4E11',4,'I',86);
 execute pa_insert_alumnos (76,224010003,'Miguel Angel','García','Huerta','IA','3A11',3,'E',84);
 execute pa_insert_alumnos (77,224010008,'Brenda','Montiel','Juarez','IA','3A11',3,'H',82);
 execute pa_insert_alumnos (78,214020017,'Kareini','Domínguez','Samano','IA','3A11',3,'H',80);
 execute pa_insert_alumnos (79,224010006,'Brayan Isaac','Platero','Dominguez','IA','3A11',3,'H',84);
 execute pa_insert_alumnos (80,224010001,'Cecilia','Abad','Ramos','IA','3A11',3,'H',73);
 execute pa_insert_alumnos (81,224010010,'Adalid','Arguello','Carretero','IA','3A11',3,'H',86);
 execute pa_insert_alumnos (82,224010004,'Diana Abigail','Montes','Hernández','IA','3A11',3,'E',90);
 execute pa_insert_alumnos (83,224010007,'Casandra','Victoria','Reyes','IA','3A11',3,'H',93);
 execute pa_insert_alumnos (84,197020009,'Jair Abinadar','Montalvo','Rivera','TICS','8T11',8,'E',94);
 execute pa_insert_alumnos (85,197020011,'Paul','Torres','Aguillon','TICS','8T11',8,'E',90);
 execute pa_insert_alumnos (86,197020004,'Mauricio','Lara','Jiménez','TICS','8T11',8,'E',92);
 execute pa_insert_alumnos (87,221020042,'Gerardo Iván','Ceron','Ramírez','LC','2C11',2,'I',92);
 execute pa_insert_alumnos (88,197020020,'Christian Alexis','Hernández','Padilla','TICS','8T11',8,'E',92);
 execute pa_insert_alumnos (89,197020015,'Daniel','Ramirez','Romero','TICS','8T11',8,'E',80);
 execute pa_insert_alumnos (90,221020073,'Vicente Alejandro','Angel','Luna','LC','2C11',2,'I',95);
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
 execute pa_insert_maestros (2,760,'Oscar Abimael','Sanchez','De los Santos','ISC','Fundamentos de Base de Datos','4S12');
 execute pa_insert_maestros (3,760,'Oscar Abimael','Sanchez','De los Santos','ISC','Fundamentos de Ingenieria de Software','5S11');
 execute pa_insert_maestros (4,760,'Oscar Abimael','Sanchez','De los Santos','IAD','Aplicaciones empresariales para las MYPYMES','7AD11');
 execute pa_insert_maestros (5,760,'Oscar Abimael','Sanchez','De los Santos','TICS','Metodologias Agiles','7T11');
 execute pa_insert_maestros (6,681,'Francisco Raul','Salvador','Ginez','ISC','Redes de Computadoras','6S11');
 execute pa_insert_maestros (7,681,'Francisco Raul','Salvador','Ginez','ISC','Redes de Computadoras','6S12');
 execute pa_insert_maestros (8,681,'Francisco Raul','Salvador','Ginez','ISC','Conmutación y Enrutamiento de Computadoras','7S11');
 execute pa_insert_maestros (9,209,'Maria Cristina','Rodriguez','Mendias','ISC','Investigación de Operaciones','3S11');
 execute pa_insert_maestros (10,209,'Maria Cristina','Rodriguez','Mendias','ISC','Métodos Numericos','4S11');
 execute pa_insert_maestros (11,209,'Maria Cristina','Rodriguez','Mendias','ISC','Métodos Numericos','4S12');
 execute pa_insert_maestros (12,209,'Maria Cristina','Rodriguez','Mendias','ISC','Métodos Numericos','4S21');
 execute pa_insert_maestros (13,209,'Maria Cristina','Rodriguez','Mendias','ISC','Simulación','4S11');
 execute pa_insert_maestros (14,209,'Maria Cristina','Rodriguez','Mendias','ISC','Simulación','4S12');
 execute pa_insert_maestros (15,209,'Maria Cristina','Rodriguez','Mendias','ISC','Simulación','4S21');
 execute pa_insert_maestros (16,147,'Gerardo','Nava','Hernandez','ISC','Graficación','5S11');
 execute pa_insert_maestros (17,147,'Gerardo','Nava','Hernandez','ISC','Lenguajes de Interfaz','6S11');
 execute pa_insert_maestros (18,147,'Gerardo','Nava','Hernandez','ISC','Lenguajes de Interfaz','6S12');
 execute pa_insert_maestros (19,147,'Gerardo','Nava','Hernandez','ISC','Lenguajes de Interfaz','6S21');
 execute pa_insert_maestros (20,212,'Gustavo Moises','Romero','Gonzalez','ISC','Sistemas Operativos','5S11');
 execute pa_insert_maestros (21,212,'Gustavo Moises','Romero','Gonzalez','ISC','Taller de Sistemas Operativos','6S11');
 execute pa_insert_maestros (22,212,'Gustavo Moises','Romero','Gonzalez','ISC','Taller de Sistemas Operativos','6S12');
 execute pa_insert_maestros (23,212,'Gustavo Moises','Romero','Gonzalez','ISC','Taller de Sistemas Operativos','6S21');
 execute pa_insert_maestros (24,212,'Gustavo Moises','Romero','Gonzalez','TICS','Bases de Datos Distribuidas','5T11');
 execute pa_insert_maestros (25,212,'Gustavo Moises','Romero','Gonzalez','TICS','Sistemas Operativos 1','6T11');
 execute pa_insert_maestros (26,212,'Gustavo Moises','Romero','Gonzalez','TICS','Sistemas Operativos 2','7T11');
 execute pa_insert_maestros (27,243,'Albertossi','Landeros','Rojas','ISC','Principios Electronicos','4S11');
 execute pa_insert_maestros (28,243,'Albertossi','Landeros','Rojas','ISC','Principios Electronicos','4S12');
 execute pa_insert_maestros (29,243,'Albertossi','Landeros','Rojas','ISC','Principios Electronicos','4S21');
 execute pa_insert_maestros (30,243,'Albertossi','Landeros','Rojas','ISC','Sistemas Programables','7S11');
 execute pa_insert_maestros (31,243,'Albertossi','Landeros','Rojas','TICS','Circuitos Eléctricos y Eléctronicos','4T11');
 execute pa_insert_maestros (32,188,'Luis Israel','Guerrero','Lucio','LG','Microbiología de los alimentos','1G11');
 execute pa_insert_maestros (33,188,'Luis Israel','Guerrero','Lucio','LG','Microbiología de los alimentos','1G21');
 execute pa_insert_maestros (34,188,'Luis Israel','Guerrero','Lucio','LG','Quimica de los alimentos','3G11'); 
 execute pa_insert_maestros (35,348,'Jose Luis','Villareal','Lopez','TICS','Analisis de señales y sistemas de comunicación','5T11');
 execute pa_insert_maestros (36,348,'Jose Luis','Villareal','Lopez','TICS','Electricidad y Magnetismo','3T11');
 execute pa_insert_maestros (37,348,'Jose Luis','Villareal','Lopez','TICS','Telecomunicaciones','6T11');
 execute pa_insert_maestros (38,348,'Jose Luis','Villareal','Lopez','TICS','Administración y Seguridad de redes','8T11');
 execute pa_insert_maestros (39,348,'Jose Luis','Villareal','Lopez','TICS','Administración y Seguridad de redes','8T21');
 execute pa_insert_maestros (40,756,'Cesar Michael','Gonzalez','Serrano','IAD','Adminstración Financiera','6AD12');
 execute pa_insert_maestros (41,756,'Cesar Michael','Gonzalez','Serrano','IAD','Economia','4AD11');
 execute pa_insert_maestros (42,756,'Cesar Michael','Gonzalez','Serrano','IAD','Administracion de la Producción','6AD11');
 execute pa_insert_maestros (43,756,'Cesar Michael','Gonzalez','Serrano','IAD','Finanzas Etrategicas para MIPYMES','8AD11');
 execute pa_insert_maestros (44,694,'Beatriz','Cortez','Rodríguez','IAD','Relaciones Publicas','8AD12');
 execute pa_insert_maestros (45,694,'Beatriz','Cortez','Rodríguez','IAD','Capital Humano','5AD11');
 execute pa_insert_maestros (46,694,'Beatriz','Cortez','Rodríguez','IAD','Administración de la calidad','7AD11');
 execute pa_insert_maestros (47,694,'Beatriz','Cortez','Rodríguez','LG','Dirección de establecimientos de Alimentos y Bebidas','8G11');
 execute pa_insert_maestros (48,415,'Juan Carlos','Martínez','Hernández','IER','Sistemas Térmicos','6E11');
 execute pa_insert_maestros (49,415,'Juan Carlos','Martínez','Hernández','IER','Termodinámica','4E11');
 execute pa_insert_maestros (50,415,'Juan Carlos','Martínez','Hernández','IER','Macro moléculas','7E11');
 execute pa_insert_maestros (51,698,'Alejandro','Bustamante','Duran','LG','Tendencias de la alta repostería','8G11');
 execute pa_insert_maestros (52,698,'Alejandro','Bustamante','Duran','LG','Tendencias de la alta repostería','8G12');
 execute pa_insert_maestros (53,698,'Alejandro','Bustamante','Duran','LG','Tendencias de la alta repostería','8G21');
 execute pa_insert_maestros (54,698,'Alejandro','Bustamante','Duran','LG','Panaderia','4G21');
 execute pa_insert_maestros (55,698,'Alejandro','Bustamante','Duran','LG','Introducción a la reposteria','5G11');
 execute pa_insert_maestros (56,698,'Alejandro','Bustamante','Duran','LG','Introducción a la reposteria','5G21');
 execute pa_insert_maestros (57,720,'Monserrat','Hernández','Flores','LG','Cocina internacional 1','6G11');
 execute pa_insert_maestros (58,720,'Monserrat','Hernández','Flores','LG','Cocina internacional 1','6G21');
 execute pa_insert_maestros (59,720,'Monserrat','Hernández','Flores','LG','Cocina internacional 1','6G22');
 execute pa_insert_maestros (60,720,'Monserrat','Hernández','Flores','LG','Cultura y Patrimonio','2G22');
 execute pa_insert_maestros (61,720,'Monserrat','Hernández','Flores','LG','Cultura y Patrimonio','2G21');
 execute pa_insert_maestros (62,630,'Marco','Mejia','Villalpando','IA','Probabilidad y Estadística Ambiental','2A11');
 execute pa_insert_maestros (63,630,'Marco','Mejia','Villalpando','IA','Producción más limpia','8A11');
 execute pa_insert_maestros (64,630,'Marco','Mejia','Villalpando','IA','Producción más limpia','8A12'); 
 execute pa_insert_maestros (65,630,'Marco','Mejia','Villalpando','IA','Residuos Valorisables','8A11');
 execute pa_insert_maestros (66,630,'Marco','Mejia','Villalpando','IA','Residuos Valorisables','8A12');
 execute pa_insert_maestros (67,630,'Marco','Mejia','Villalpando','IA','Toxicología Am biental','5A11');
 execute pa_insert_maestros (68,630,'Marco','Mejia','Villalpando','IA','Biomquimica','3A11');
 execute pa_insert_maestros (69,695,'Minandro','Camarillo','Cadena','IA','Calculo Diferencial','1a11');
 execute pa_insert_maestros (70,695,'Minandro','Camarillo','Cadena','IA','Calculo Integral','2A11');
 execute pa_insert_maestros (71,695,'Minandro','Camarillo','Cadena','IA','Calculo Vectorial','3A11');
 execute pa_insert_maestros (72,695,'Minandro','Camarillo','Cadena','IA','Ecuaciones Diferenciales','4A11');
 execute pa_insert_maestros (73,477,'Victor','Duarte','Zaragoza','IA','Fundamentos de Investigación','7A11'); 
 execute pa_insert_maestros (74,477,'Victor','Duarte','Zaragoza','IA','Taller de investigación 1','6A11');
 execute pa_insert_maestros (75,477,'Victor','Duarte','Zaragoza','IA','Manejo Integral del Suelo ','8A11');
 execute pa_insert_maestros (76,477,'Victor','Duarte','Zaragoza','IA','Remediación del suelo','7A11');
 execute pa_insert_maestros (77,918,'Victor Manuel','Fuentes','Olivares','IER','Automatismo','9E11');
 execute pa_insert_maestros (78,918,'Victor Manuel','Fuentes','Olivares','IER','Circuitos eléctricos','4E11');
 execute pa_insert_maestros (79,918,'Victor Manuel','Fuentes','Olivares','ISA','Análisis de circuitos eléctricos','4SA11');
 execute pa_insert_maestros (80,918,'Victor Manuel','Fuentes','Olivares','IER','Instrumentación','7E11');
 execute pa_insert_maestros (81,918,'Victor Manuel','Fuentes','Olivares','IER','Instalaciones eléctricas','6E11');
 execute pa_insert_maestros (82,918,'Victor Manuel','Fuentes','Olivares','IER','Máquinas hidráulicas','6E11');
 execute pa_insert_maestros (83,918,'Victor Manuel','Fuentes','Olivares','IER','Gestión empresarial','8E11');
 execute pa_insert_maestros (84,697,'Juan Manuel','Estrada','Basurto','IND','Dibujo industrial','1I11');
 execute pa_insert_maestros (85,697,'Juan Manuel','Estrada','Basurto','IND','Planeación y diseño de las instalaciones','7I11');
 execute pa_insert_maestros (86,697,'Juan Manuel','Estrada','Basurto','IND','Diseño asistido por ordenador','6I21');
 execute pa_insert_maestros (87,697,'Juan Manuel','Estrada','Basurto','ISA','Manufactura para los procesos de elementos automotrices ','3SA11');
 execute pa_insert_maestros (88,697,'Juan Manuel','Estrada','Basurto','IND','Metrología','8I11');
 execute pa_insert_maestros (89,697,'Juan Manuel','Estrada','Basurto','ISA','Tecnología y comportamiento de los materiales','2SA11');
 execute pa_insert_maestros (90,64,'Jorge','Garcia','Nieva','IND','Calculo vectorial','3I11');
 execute pa_insert_maestros (91,64,'Jorge','Garcia','Nieva','ISA','Algebra lineal','2SA11');
 execute pa_insert_maestros (92,64,'Jorge','Garcia','Nieva','IND','Estadística inferencial I','4I12');
 execute pa_insert_maestros (93,64,'Jorge','Garcia','Nieva','IND','Estadística inferencial II','4I12');
 execute pa_insert_maestros (94,64,'Jorge','Garcia','Nieva','ISA','Estadística para administración','3SA11');
 execute pa_insert_maestros (95,928,'Samantha','Paez','Rivera','IAD','Taller de ética','2AD11');
 execute pa_insert_maestros (96,928,'Samantha','Paez','Rivera','IND','Taller de herramientas intelectuales','1I11');
 execute pa_insert_maestros (97,928,'Samantha','Paez','Rivera','IAD','Taller de investigación I','6AD12');
 execute pa_insert_maestros (98,651,'Leobardo','Morales','Ruiz','ISA','Fundamentos de dibujo','1SA11');
 execute pa_insert_maestros (99,651,'Leobardo','Morales','Ruiz','ISA','Tecnología y comportamiento de materiales','2SA21');
 execute pa_insert_maestros (100,651,'Leobardo','Morales','Ruiz','ISA','Estática mecánica de materiales','3SA11');  
 execute pa_insert_maestros (101,651,'Leobardo','Morales','Ruiz','ISA','Diseño de elemento de máquinas','4SA11');
 execute pa_insert_maestros (102,873,'Erika Guadalupe','Galicia','Herrera','ISA','Química aplicada a sistemas automotrices','1SA11');
 execute pa_insert_maestros (103,873,'Erika Guadalupe','Galicia','Herrera','IND','Liderazgo','2I11');
 execute pa_insert_maestros (104,873,'Erika Guadalupe','Galicia','Herrera','IND','Fundamentos de investigación','1I11');
 execute pa_insert_maestros (105,873,'Erika Guadalupe','Galicia','Herrera','TICS','Desarrollo de emprendedores','6T11');
 execute pa_insert_maestros (106,913,'Jose','Perez','Callejas','ISA','Mecánica de fluidos','4SA11');
 execute pa_insert_maestros (107,913,'Jose','Perez','Callejas','IER','Refrigeracion de aire acondicionado','6E11');
 execute pa_insert_maestros (108,913,'Jose','Perez','Callejas','ISA','Calculo integral','2SA21');
 execute pa_insert_maestros (109,173,'Silvino','Perez','Alvarez','LC','Costos históricos','4C21');
 execute pa_insert_maestros (110,173,'Silvino','Perez','Alvarez','LC','Impuestos predeterminados','6C21');
 execute pa_insert_maestros (111,173,'Silvino','Perez','Alvarez','LC','Planeación','7C11');
 execute pa_insert_maestros (112,530,'José Luis','Rocha','Lijandro','LC','Análisis de estados financieros','4C12');
 execute pa_insert_maestros (113,530,'José Luis','Rocha','Lijandro','LC','Contabilidad internacional','6C11');
 execute pa_insert_maestros (114,530,'José Luis','Rocha','Lijandro','LC','Gestión empresarial del factor humano','8C12');
 execute pa_insert_maestros (115,530,'José Luis','Rocha','Lijandro','LC','Contabilidad financiera I','2C11');
 execute pa_insert_maestros (116,530,'José Luis','Rocha','Lijandro','LC','Contabilidad financiera II','3C11');
 execute pa_insert_maestros (117,530,'José Luis','Rocha','Lijandro','LC','Costos industriales','3C11');
 execute pa_insert_maestros (118,600,'Antonio','Palafox','Castañeda','LC','Tecnología empleada en la gestión empresarial','8C11');
 execute pa_insert_maestros (119,600,'Antonio','Palafox','Castañeda','LC','Administración estratégica','6C11');
 execute pa_insert_maestros (120,600,'Antonio','Palafox','Castañeda','LC','Seminario de contaduría','7C11');
 execute pa_insert_maestros (121,600,'Antonio','Palafox','Castañeda','LC','Administración de la producción de operaciones','5C11');
 execute pa_insert_maestros (122,227,'Jose','Guadalupe','Callejas','IER','Refrigeración y Aire Acondicionado','6E11');
 execute pa_insert_maestros (123,227,'Jose','Guadalupe','Callejas','IER','Refrigeración y Aire Acondicionado','6E12');
  
-------------Ingeniería en Sistemas Computacionales--ISC----------------------------------------

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