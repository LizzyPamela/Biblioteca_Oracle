
-- -----------------------------------------------------------------------------------
-- Autor           	: Jostin Cruz
-- Descripcion      : Archivo maestro que ejecuta los scripts en la secuencia requerida
-- Servidor       	: ip del servidor  localhost
-- Fecha          	: 31 de octubre del 2024
-- -----------------------------------------------------------------------------------
SET DEFINE OFF
SET VERIFY ON
SET HEADING OFF
SET FEEDBACK OFF

spool  !RUN_BDD_2023.log

PROMPT *** Iniciando la Ejecucion de Comandos ****

Select banner from v$version;

select 'Instancia=' || sys_context('USERENV','DB_NAME') as INSTANCIA FROM DUAL
UNION ALL
select 'Database =' || global_name from global_name
UNION ALL
Select 'Usuario  =' || USER AS USUARIO FROM DUAL
UNION ALL
Select 'Fecha    =' || to_char(SYSDATE,'DD/MON/YYYY HH:MM:SS AM') AS FECHA FROM DUAL;


SET HEADING ON
SET FEEDBACK ON
SET ECHO ON

Prompt ***Inicio***

Prompt ***DDL***
Prompt ./DDL/DDLFINALES.sql
@ ./DDL/DDLFINALES.sql

Prompt ***DML***

Prompt ./DML/area.sql
@ ./DML/area.sql

Prompt ./DML/autor.sql
@ ./DML/autor.sql

Prompt ./DML/biblioteca.sql
@ ./DML/biblioteca.sql

Prompt ./DML/cargo.sql
@ ./DML/cargo.sql

Prompt ./DML/categoria.sql
@ ./DML/categoria.sql

Prompt ./DML/comentario.sql
@ ./DML/comentario.sql

Prompt ./DML/cubiculo.sql
@ ./DML/cubiculo.sql

Prompt ./DML/descuento.sql
@ ./DML/descuento.sql

Prompt ./DML/detalleFactura.sql
@ ./DML/detalleFactura.sql

Prompt ./DML/devolucion.sql
@ ./DML/devolucion.sql

Prompt ./DML/direccionEditorial.sql
@ ./DML/direccionEditorial.sql

Prompt ./DML/direccionPersona.sql
@ ./DML/direccionPersona.sql

Prompt ./DML/donacion.sql
@ ./DML/donacion.sql

Prompt ./DML/Editorial_has_Direccion_Editorial.sql
@ ./DML/Editorial_has_Direccion_Editorial.sql

Prompt ./DML/Editorial_has_Proveedor.sql
@ ./DML/Editorial_has_Proveedor.sql

Prompt ./DML/editorial.sql
@ ./DML/editorial.sql

Prompt ./DML/empleado.sql
@ ./DML/empleado.sql

Prompt ./DML/estadoCuenta.sql
@ ./DML/estadoCuenta.sql

Prompt ./DML/estante.sql
@ ./DML/estante.sql

Prompt ./DML/evento.sql
@ ./DML/evento.sql

Prompt ./DML/Eventos_has_Horario_Biblioteca.sql
@ ./DML/Eventos_has_Horario_Biblioteca.sql

Prompt ./DML/factura.sql
@ ./DML/factura.sql

Prompt ./DML/formaPago.sql
@ ./DML/formaPago.sql

Prompt ./DML/Formato_Libro_has_Libro.sql
@ ./DML/Formato_Libro_has_Libro.sql

Prompt ./DML/formatoLibro.sql
@ ./DML/formatoLibro.sql

Prompt ./DML/horarioBiblioteca.sql
@ ./DML/horarioBiblioteca.sql

Prompt ./DML/horarioEmpleado.sql
@ ./DML/horarioEmpleado.sql

Prompt ./DML/Libro_Comprado_has_Proveedor.sql
@ ./DML/Libro_Comprado_has_Proveedor.sql

Prompt ./DML/Libro_has_Autor.sql
@ ./DML/Libro_has_Autor.sql

Prompt ./DML/libro_has_cubiculo.sql
@ ./DML/libro_has_cubiculo.sql

Prompt ./DML/libro.sql
@ ./DML/libro.sql

Prompt ./DML/libroComprado.sql
@ ./DML/libroComprado.sql

Prompt ./DML/libroPerdido.sql
@ ./DML/libroPerdido.sql

Prompt ./DML/libroVendido.sql
@ ./DML/libroVendido.sql

Prompt ./DML/Membresia_has_Descuento.sql
@ ./DML/Membresia_has_Descuento.sql

Prompt ./DML/membresia.sql
@ ./DML/membresia.sql

Prompt ./DML/multa.sql
@ ./DML/multa.sql

Prompt ./DML/persona.sql
@ ./DML/persona.sql

Prompt ./DML/prestamo.sql
@ ./DML/prestamo.sql

Prompt ./DML/proveedor.sql
@ ./DML/proveedor.sql

Prompt ./DML/salario.sql
@ ./DML/salario.sql

Prompt ./DML/sancion.sql
@ ./DML/sancion.sql

Prompt ./DML/SubArea_has_Autor.sql
@ ./DML/SubArea_has_Autor.sql

Prompt ./DML/subArea.sql
@ ./DML/subArea.sql

Prompt ./DML/subCategoria_has_categoria.sql
@ ./DML/subCategoria_has_categoria.sql

Prompt ./DML/subCategoria.sql
@ ./DML/subCategoria.sql

Prompt ./DML/sugerencia.sql
@ ./DML/sugerencia.sql

Prompt ./DML/telefono.sql
@ ./DML/telefono.sql

Prompt ./DML/usuario.sql
@ ./DML/usuario.sql

Prompt ./DML/valoracion.sql
@ ./DML/valoracion.sql




Prompt ***Triggers***
Promt ./Triggers/Triggers.sql
@   ./Triggers/Triggers.sql

Promt ***sequences***
Promt .Sequences/Sequences.sql
@   .Sequences/Sequences.sql

Promt ***usuario***
Promt   ./userRol.sql
@       ./userRol.sql

COMMIT;

PROMPT ----------------------------------------------------------------------------------
PROMPT    FIN DE EJECUCION DE SCRIPTS
PROMPT ----------------------------------------------------------------------------------

spool off

