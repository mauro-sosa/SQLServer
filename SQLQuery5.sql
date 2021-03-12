

drop table if exists datosCliente


create table datosCliente (idCliente int primary key not null, nombreCliente varchar(300), direccionCliente varchar (500) )

select * from datosCliente order by nombreCliente

select a.nombreCliente,a.direccionCliente, b.productoNombre, b.costo from datosCliente a inner join compras b on a.idCliente = b.idCliente


insert into datosCliente values ( 1, ' Manuel Costa', ' Toesca 1228 ')
insert into datosCliente values ( 2, ' Juan Alvarado', ' Rancagua 330 ')
insert into datosCliente values ( 3, ' Ana Rosas', ' Sazie 1440 ')
insert into datosCliente values ( 4, ' Fabiana Casas', ' Cumming 80 ')
insert into datosCliente values ( 5, ' Martin Aguirre', ' Santa Isabel 5660 ')
insert into datosCliente values ( 6, ' Diego Rodriguez', ' Zenteno 30 ')

truncate table datosCliente;

drop table if exists compras

create table compras (compraId int primary key not null, productoNombre varchar (200), costo float, idCliente int)

insert into compras values (1, ' computadora ', 5000, 1 )
insert into compras values (2, ' television ', 3000, 2 )
insert into compras values (3, ' mouse ', 1000, 3 )
insert into compras values (4, ' teclado ', 7000, 4 )
insert into compras values (5, ' lampara ', 10000, 5 )
insert into compras values (6, ' mesa ', 9000, 6 )

truncate table compras;

delete from compras where compraId = 7

select * from compras
        
update compras set costo=450 where productoNombre = ' mouse '
update compras set costo=6000 where productoNombre = ' computadora '
update compras set costo=2800 where productoNombre = ' television '
update compras set costo=8000 where productoNombre = ' escritorio '