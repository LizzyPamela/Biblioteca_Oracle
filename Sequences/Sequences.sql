-- Secuencia para la tabla area
CREATE SEQUENCE area_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla autor
CREATE SEQUENCE autor_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla biblioteca
CREATE SEQUENCE biblioteca_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla cargo
CREATE SEQUENCE cargo_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla categoria
CREATE SEQUENCE categoria_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla comentario
CREATE SEQUENCE comentario_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla cubiculo
CREATE SEQUENCE cubiculo_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla descuento
CREATE SEQUENCE descuento_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla eetalleFactura
CREATE SEQUENCE detalleFactura_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla devolucion
CREATE SEQUENCE devolucion_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla direccionEditorial
CREATE SEQUENCE direccionEditorial_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla direccionPersona
CREATE SEQUENCE direccionPersona_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla donacion
CREATE SEQUENCE donacion_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla editorial
CREATE SEQUENCE editorial_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla empleado
CREATE SEQUENCE empleado_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla estadoCuenta
CREATE SEQUENCE estadoCuenta_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla estante
CREATE SEQUENCE estante_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla evento
CREATE SEQUENCE evento_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla factura
CREATE SEQUENCE factura_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla formaPago
CREATE SEQUENCE formaPago_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla formatoLibro
CREATE SEQUENCE formatoLibro_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla horarioBiblioteca
CREATE SEQUENCE horarioBiblioteca_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla horarioEmpleado
CREATE SEQUENCE horarioEmpleado_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla impuesto
CREATE SEQUENCE impuesto_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla libro
CREATE SEQUENCE libro_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla libroComprado
CREATE SEQUENCE libroComprado_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla libroPerdido
CREATE SEQUENCE libroPerdido_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla libroVendido
CREATE SEQUENCE libroVendido_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla libro_has_cubiculo. No necesita secuencia ya que es una tabla intermedia con clave compuesta

-- Secuencia para la tabla membresia
CREATE SEQUENCE membresia_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para tabla 'multa'
CREATE SEQUENCE multa_seq 
    START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para tabla 'persona'
CREATE SEQUENCE persona_seq 
    START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para tabla 'prestamo'
CREATE SEQUENCE prestamo_seq 
    START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para tabla 'proveedor'
CREATE SEQUENCE proveedor_seq 
    START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para tabla 'salario'
CREATE SEQUENCE salario_seq 
    START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para tabla 'sancion'
CREATE SEQUENCE sancion_seq 
    START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla subArea
CREATE SEQUENCE subArea_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla subCategoria
CREATE SEQUENCE subCategoria_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla subCategoria_has_Categori. No necesita secuencia ya que es una tabla intermedia con clave compuesta

-- Secuencia para la tabla sugerencia
CREATE SEQUENCE sugerencia_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para la tabla telefono
CREATE SEQUENCE telefono_seq
  START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para tabla 'usuario'
CREATE SEQUENCE usuario_seq 
    START WITH 100
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Secuencia para tabla 'valoracion'
CREATE SEQUENCE valoracion_seq 
	START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;
