/* 
-- Trigger to auto-increment 'id' in 'area'
CREATE OR REPLACE TRIGGER trg_area_id 
BEFORE INSERT ON area
FOR EACH ROW 
BEGIN
  :NEW.id := area_seq.NEXTVAL;
END;

*/

-- Trigger para la tabla area
CREATE OR REPLACE TRIGGER area_before_insert
BEFORE INSERT ON area
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT area_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla autor
CREATE OR REPLACE TRIGGER autor_before_insert
BEFORE INSERT ON autor
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT autor_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla biblioteca
CREATE OR REPLACE TRIGGER biblioteca_before_insert
BEFORE INSERT ON biblioteca
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT biblioteca_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla cargo
CREATE OR REPLACE TRIGGER cargo_before_insert
BEFORE INSERT ON cargo
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT cargo_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla categoria
CREATE OR REPLACE TRIGGER categoria_before_insert
BEFORE INSERT ON categoria
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT categoria_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla comentario
CREATE OR REPLACE TRIGGER comentario_before_insert
BEFORE INSERT ON comentario
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT comentario_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla cubiculo
CREATE OR REPLACE TRIGGER cubiculo_before_insert
BEFORE INSERT ON cubiculo
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT cubiculo_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla descuento
CREATE OR REPLACE TRIGGER descuento_before_insert
BEFORE INSERT ON descuento
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT descuento_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla detalleFactura
CREATE OR REPLACE TRIGGER detalleFactura_before_insert
BEFORE INSERT ON detalleFactura
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT detalleFactura_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla devolucion
CREATE OR REPLACE TRIGGER devolucion_before_insert
BEFORE INSERT ON devolucion
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT devolucion_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla direccionEditorial
CREATE OR REPLACE TRIGGER direccionEditorial_before_insert
BEFORE INSERT ON direccionEditorial
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT direccionEditorial_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla direccionPersona
CREATE OR REPLACE TRIGGER direccionPersona_before_insert
BEFORE INSERT ON direccionPersona
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT direccionPersona_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla donacion
CREATE OR REPLACE TRIGGER donacion_before_insert
BEFORE INSERT ON donacion
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT donacion_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla editorial
CREATE OR REPLACE TRIGGER editorial_before_insert
BEFORE INSERT ON editorial
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT editorial_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla empleado
CREATE OR REPLACE TRIGGER empleado_before_insert
BEFORE INSERT ON empleado
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT empleado_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla estadoCuenta
CREATE OR REPLACE TRIGGER estadoCuenta_before_insert
BEFORE INSERT ON estadoCuenta
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT estadoCuenta_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla estante
CREATE OR REPLACE TRIGGER estante_before_insert
BEFORE INSERT ON estante
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT estante_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla evento
CREATE OR REPLACE TRIGGER evento_before_insert
BEFORE INSERT ON evento
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT evento_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla factura
CREATE OR REPLACE TRIGGER factura_before_insert
BEFORE INSERT ON factura
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT factura_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla formaPago
CREATE OR REPLACE TRIGGER formaPago_before_insert
BEFORE INSERT ON formaPago
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT formaPago_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla formatoLibro
CREATE OR REPLACE TRIGGER formatoLibro_before_insert
BEFORE INSERT ON formatoLibro
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT formatoLibro_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla horarioBiblioteca
CREATE OR REPLACE TRIGGER horarioBiblioteca_before_insert
BEFORE INSERT ON horarioBiblioteca
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT horarioBiblioteca_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla horarioEmpleado
CREATE OR REPLACE TRIGGER horarioEmpleado_before_insert
BEFORE INSERT ON horarioEmpleado
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT horarioEmpleado_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla impuesto
CREATE OR REPLACE TRIGGER impuesto_before_insert
BEFORE INSERT ON impuesto
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT impuesto_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla libro
CREATE OR REPLACE TRIGGER libro_before_insert
BEFORE INSERT ON libro
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT libro_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla libroComprado
CREATE OR REPLACE TRIGGER libroComprado_before_insert
BEFORE INSERT ON libroComprado
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT libroComprado_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla libroPerdido
CREATE OR REPLACE TRIGGER libroPerdido_before_insert
BEFORE INSERT ON libroPerdido
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT libroPerdido_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla libroVendido
CREATE OR REPLACE TRIGGER libroVendido_before_insert
BEFORE INSERT ON libroVendido
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT libroVendido_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla membresia
CREATE OR REPLACE TRIGGER membresia_before_insert
BEFORE INSERT ON membresia
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT membresia_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;


-- Trigger para la tabla multa
CREATE OR REPLACE TRIGGER multa_before_insert
BEFORE INSERT ON multa
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT multa_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla persona
CREATE OR REPLACE TRIGGER persona_before_insert
BEFORE INSERT ON persona
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT persona_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla prestamo
CREATE OR REPLACE TRIGGER prestamo_before_insert
BEFORE INSERT ON prestamo
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT prestamo_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla proveedor
CREATE OR REPLACE TRIGGER proveedor_before_insert
BEFORE INSERT ON proveedor
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT proveedor_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla salario
CREATE OR REPLACE TRIGGER salario_before_insert
BEFORE INSERT ON salario
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT salario_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla sancion
CREATE OR REPLACE TRIGGER sancion_before_insert
BEFORE INSERT ON sancion
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT sancion_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla subArea
CREATE OR REPLACE TRIGGER subArea_before_insert
BEFORE INSERT ON subArea
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT subArea_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla subCategoria
CREATE OR REPLACE TRIGGER subCategoria_before_insert
BEFORE INSERT ON subCategoria
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT subCategoria_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla sugerencia
CREATE OR REPLACE TRIGGER sugerencia_before_insert
BEFORE INSERT ON sugerencia
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT sugerencia_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla telefono
CREATE OR REPLACE TRIGGER telefono_before_insert
BEFORE INSERT ON telefono
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT telefono_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla usuario
CREATE OR REPLACE TRIGGER usuario_before_insert
BEFORE INSERT ON usuario
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT usuario_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;

-- Trigger para la tabla valoracion
CREATE OR REPLACE TRIGGER valoracion_before_insert
BEFORE INSERT ON valoracion
FOR EACH ROW
BEGIN
  IF :NEW.id IS NULL THEN
    SELECT valoracion_seq.NEXTVAL INTO :NEW.id FROM dual;
  END IF;
END;
