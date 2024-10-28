-- DDL for table Editorial_has_Direccion_Editorial
CREATE TABLE Editorial_has_Direccion_Editorial (
  editorial_id NUMBER NOT NULL ,
  direccionEditorial_id NUMBER NOT NULL ,
  PRIMARY KEY (editorial_id,direccionEditorial_id),
  CONSTRAINT fk_Editorial_has_Direccion_Editorial_Direccion_Editorial1 FOREIGN KEY (direccionEditorial_id) REFERENCES direccionEditorial (id),
  CONSTRAINT fk_Editorial_has_Direccion_Editorial_Editorial1 FOREIGN KEY (editorial_id) REFERENCES editorial (id)
) ;



COMMENT ON COLUMN  Editorial_has_Direccion_EditoriaL.editorial_id               IS  'Identificador único para cada registro de la \ntabla Editorial.\r';
COMMENT ON COLUMN  Editorial_has_Direccion_Editorial.direccionEditorial_id      IS  'Identificador único para cada registro de la \ntabla Direccion_Editorial.';



CREATE INDEX fk_Editorial_has_Direccion_Editorial_Direccion_Editorial1_idx      ON Editorial_has_Direccion_Editorial(direccionEditorial_id);
CREATE INDEX fk_Editorial_has_Direccion_Editorial_Editorial1_idx                ON Editorial_has_Direccion_Editorial(editorial_id);




-- DDL for table Editorial_has_Proveedor
CREATE TABLE Editorial_has_Proveedor (
  editorial_id NUMBER NOT NULL,
  proveedor_id NUMBER NOT NULL,
  PRIMARY KEY (editorial_id,proveedor_id),
  CONSTRAINT fk_Editorial_has_Proveedor_Editorial1 FOREIGN KEY (editorial_id) REFERENCES editorial (id),
  CONSTRAINT fk_Editorial_has_Proveedor_Proveedor1 FOREIGN KEY (proveedor_id) REFERENCES proveedor (id)
);

CREATE INDEX fk_Editorial_has_Proveedor_Proveedor1_idx ON Editorial_has_Proveedor(proveedor_id);
CREATE INDEX fk_Editorial_has_Proveedor_Editorial1_idx ON Editorial_has_Proveedor(editorial_id);



-- DDL for table Eventos_has_Horario_Biblioteca
CREATE TABLE Eventos_has_Horario_Biblioteca (
  eventos_id NUMBER NOT NULL,
  horarioBiblioteca_id NUMBER NOT NULL,
  PRIMARY KEY (eventos_id,horarioBiblioteca_id),
  CONSTRAINT fk_Eventos_has_Horario_Biblioteca_Eventos1 FOREIGN KEY (eventos_id) REFERENCES evento (id),
  CONSTRAINT fk_Eventos_has_Horario_Biblioteca_Horario_Biblioteca1 FOREIGN KEY (horarioBiblioteca_id) REFERENCES horarioBiblioteca (id)
) ;


CREATE INDEX fk_Eventos_has_Horario_Biblioteca_Horario_Biblioteca1_idx    ON    Eventos_has_Horario_Biblioteca(horarioBiblioteca_id);
CREATE INDEX fk_Eventos_has_Horario_Biblioteca_Eventos1_idx               ON    Eventos_has_Horario_Biblioteca(eventos_id);



-- DDL for table Formato_Libro_has_Libro
CREATE TABLE Formato_Libro_has_Libro (
  formatoLibro_id NUMBER NOT NULL ,
  libro_id NUMBER NOT NULL ,
  CONSTRAINT fk_Formato_Libro_has_Libro_Formato_Libro1 FOREIGN KEY (formatoLibro_id) REFERENCES formatoLibro (id),
  CONSTRAINT fk_Formato_Libro_has_Libro_Libro1 FOREIGN KEY (libro_id) REFERENCES libro (id)
) ;


COMMENT ON COLUMN Formato_Libro_has_Libro.formatoLibro_id      IS 'Identificador único para cada registro de la \ntabla Formato_Libro.';
COMMENT ON COLUMN Formato_Libro_has_Libro.libro_id             IS 'Identificador único para cada registro de la \ntabla Libro';

CREATE INDEX fk_Formato_Libro_has_Libro_Libro1_idx                        ON    Formato_Libro_has_Libro(libro_id);
CREATE INDEX fk_Formato_Libro_has_Libro_Formato_Libro1_idx                ON    Formato_Libro_has_Libro(formatoLibro_id);


-- DDL for table Libro_Comprado_has_Proveedor
CREATE TABLE Libro_Comprado_has_Proveedor (
  libro_comprado_id NUMBER NOT NULL ,
  proveedor_id NUMBER NOT NULL,
  PRIMARY KEY (libro_comprado_id,proveedor_id),
  CONSTRAINT fk_Libro_Comprado_has_Proveedor_Libro_Comprado1 FOREIGN KEY (libro_comprado_id) REFERENCES libroComprado (id),
  CONSTRAINT fk_Libro_Comprado_has_Proveedor_Proveedor1 FOREIGN KEY (proveedor_id) REFERENCES proveedor (id)
) ;


COMMENT ON COLUMN  Libro_Comprado_has_Proveedor.libro_comprado_id      IS 'Identificador único para cada registro de\nla tabla Libro_Comprado.';
COMMENT ON COLUMN  Libro_Comprado_has_Proveedor.proveedor_id           IS 'Identificador único para cada registro de\nla tabla Proveedor.';

CREATE INDEX     fk_Libro_Comprado_has_Proveedor_Proveedor1_idx                  ON      Libro_Comprado_has_Proveedor(proveedor_id);
CREATE INDEX     fk_Libro_Comprado_has_Proveedor_Libro_Comprado1_idx             ON      Libro_Comprado_has_Proveedor(libro_comprado_id);





-- DDL for table Libro_has_Autor
CREATE TABLE Libro_has_Autor (
  libro_id NUMBER NOT NULL ,
  autor_id NUMBER NOT NULL ,
  PRIMARY KEY (libro_id,autor_id),
  CONSTRAINT fk_Libro_has_Autor_Autor1 FOREIGN KEY (autor_id) REFERENCES autor (id),
  CONSTRAINT fk_Libro_has_Autor_Libro1 FOREIGN KEY (libro_id) REFERENCES libro (id)
);


COMMENT ON COLUMN   Libro_has_Autor.libro_id          IS  'Identificador único para cada registro de la \ntabla Libro.\r';
COMMENT ON COLUMN    Libro_has_Autor.autor_id         IS  'Identificador único para cada registro de la \ntabla Libro.\r';

CREATE INDEX     fk_Libro_has_Autor_Autor1_idx                 ON      Libro_has_Autor(autor_id);
CREATE INDEX     fk_Libro_has_Autor_Libro1_idx                 ON      Libro_has_Autor(libro_id);




-- DDL for table Membresia_has_Descuento
CREATE TABLE Membresia_has_Descuento (
  membresia_id NUMBER NOT NULL ,
  descuento_id NUMBER NOT NULL,
  PRIMARY KEY (membresia_id,descuento_id),
  CONSTRAINT fk_Membresía_has_Descuento_Descuento1 FOREIGN KEY (descuento_id) REFERENCES descuento (id),
  CONSTRAINT fk_Membresía_has_Descuento_Membresía1 FOREIGN KEY (membresia_id) REFERENCES membresia (id)
) ;



COMMENT ON COLUMN   Membresia_has_Descuento.membresia_id          IS  'Identificador único para cada registro de la \ntabla Membresia.';
COMMENT ON COLUMN   Membresia_has_Descuento.descuento_id          IS  'Identificador único para cada registro de la \ntabla Membresia.';

CREATE INDEX      fk_Membresía_has_Descuento_Descuento1_idx                 ON      Membresia_has_Descuento(descuento_id);
CREATE INDEX      fk_Membresía_has_Descuento_Membresía1_idx                 ON      Membresia_has_Descuento(membresia_id);




-- DDL for table SubArea_has_Autor
CREATE TABLE SubArea_has_Autor (
  subArea_id NUMBER NOT NULL ,
  autor_id NUMBER NOT NULL ,
  PRIMARY KEY (subArea_id,autor_id),
  CONSTRAINT fk_SubArea_has_Autor_Autor1 FOREIGN KEY (autor_id) REFERENCES autor (id),
  CONSTRAINT fk_SubArea_has_Autor_SubArea1 FOREIGN KEY (subArea_id) REFERENCES subArea (id)
) ;


COMMENT ON COLUMN   SubArea_has_Autor.subArea_id         IS  'Identificador único para cada registro de la \ntabla SubArea.';
COMMENT ON COLUMN   SubArea_has_Autor.autor_id           IS  'Identificador único para cada registro de la \ntabla Autor.\n';

CREATE INDEX      fk_Membresía_has_Descuento_Descuento1_idx                 ON      SubArea_has_Autor(autor_id);
CREATE INDEX      fk_Membresía_has_Descuento_Membresía1_idx                 ON      SubArea_has_Autor(subArea_id);



-- DDL for table area
CREATE TABLE area (
  id NUMBER NOT NULL  DEFAULT area_seq.NEXTVAL ,
  nombre VARCHAR2(45)  NOT NULL ,
  ubicacion VARCHAR2(500)  NOT NULL ,
  PRIMARY KEY (id)
) ;


COMMENT ON COLUMN   area.id               IS  'Identificador único para cada registro \nen la tabla Área.';
COMMENT ON COLUMN   area.nombre           IS  'Nombre del Área de división de libros \nen la biblioteca.';
COMMENT ON COLUMN   area.ubicacion        IS  'Ubicación del Área dentro de la \nbiblioteca.';






-- DDL for table autor
CREATE TABLE autor (
  id NUMBER NOT NULL  DEFAULT autor_seq.NEXTVAL ,
  nacionalidad VARCHAR2(45)  DEFAULT NULL ,
  persona_id NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Autor_Persona1 FOREIGN KEY (persona_id) REFERENCES persona (id)
) ;



COMMENT ON COLUMN autor.id                 IS 'Identificador único para cada registro \nen la tabla Autor.';
COMMENT ON COLUMN autor.nacionalidad       IS 'Nacionalidad del Autor';
COMMENT ON COLUMN autor.persona_id         IS 'Asociación con Persona, un Autor es \nuna Persona';

CREATE INDEX fk_Autor_Persona1_idx ON autor(persona_id);


-- DDL for table biblioteca
CREATE TABLE biblioteca (
  id NUMBER NOT NULL  DEFAULT biblioteca_seq.NEXTVAL ,
  nombre VARCHAR2(45) NOT NULL ,
  direccion VARCHAR2(500)  NOT NULL ,
  PRIMARY KEY (id)
) ;

COMMENT ON COLUMN biblioteca.id            IS  'Identificador único para cada \nregistro en la tabla biblioteca.';
COMMENT ON COLUMN biblioteca.nombre        IS  'Nombre de la Biblioteca';
COMMENT ON COLUMN biblioteca.direccion     IS  'Dirección de la Biblioteca\n';




-- DDL for table cargo
CREATE TABLE cargo (
  id NUMBER NOT NULL  DEFAULT cargo_seq.NEXTVAL ,
  salario_id NUMBER NOT NULL ,
  nombre VARCHAR2(100)  NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Cargo_Salario1 FOREIGN KEY (salario_id) REFERENCES salario (id)
) ;



COMMENT ON COLUMN cargo.id               IS  'Identificador único para cada registro en \nla tabla Cargo';
COMMENT ON COLUMN cargo.salario_id       IS  'Salario asociado al cargo desempeñado \npor el empleado';
COMMENT ON COLUMN cargo.nombre           IS  'Nombre del cargo desempeñado por el \nempleado.\n';

CREATE INDEX fk_Cargo_Salario1_idx  ON cargo(salario_id);


-- DDL for table categoria
CREATE TABLE categoria (
  id NUMBER NOT NULL  DEFAULT categoria_seq.NEXTVAL,
  nombre VARCHAR2(100)  NOT NULL ,
  descripcion VARCHAR2(100)  NOT NULL ,
  area_id NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Categoría_Area1 FOREIGN KEY (area_id) REFERENCES area (id)
) ;


COMMENT ON COLUMN categoria.id                  IS  'Identificador único para cada registro en \nla tabla Cargo';
COMMENT ON COLUMN categoria.nombre              IS  'Nombre de la categoría de división de libros \ndentro de la biblioteca.';
COMMENT ON COLUMN categoria.descripcion         IS  'Descripción de la categoría';
COMMENT ON COLUMN categoria.area_id             IS  'Área asociada a la categoría divisoria.';

CREATE INDEX fk_Categoría_Area1_idx ON categoria(area_id);



-- DDL for table categoria_has_libro
CREATE TABLE categoria_has_libro (
  categoría_id NUMBER NOT NULL ,
  libro_id NUMBER NOT NULL ,
  PRIMARY KEY (categoría_id,libro_id),
  CONSTRAINT fk_Categoría_has_Libro_Categoría1 FOREIGN KEY (categoría_id) REFERENCES categoria (id),
  CONSTRAINT fk_Categoría_has_Libro_Libro1 FOREIGN KEY (libro_id) REFERENCES libro (id)
) ;


COMMENT ON COLUMN categoria_has_libro.categoría_id          IS  'Identificador único para cada registro de la tabla\nCategoría.';
COMMENT ON COLUMN categoria_has_libro.libro_id              IS  'Identificador único para cada registro de la tabla\nLibro.';


CREATE INDEX fk_Categoría_has_Libro_Libro1_idx        ON  categoria_has_libro(libro_id);
CREATE INDEX  fk_Categoría_has_Libro_Categoría1_idx   ON  categoria_has_libro(categoría_id);




-- DDL for table comentario
CREATE TABLE comentario (
  id NUMBER NOT NULL  DEFAULT comentario_seq.NEXTVAL ,
  tipo VARCHAR2(45)   NOT NULL ,
  contenido VARCHAR2(500)  NOT NULL ,
  usuario_id NUMBER NOT NULL ,
  libro_id NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Comentario_Libro1 FOREIGN KEY (libro_id) REFERENCES libro (id),
  CONSTRAINT fk_Comentario_Usuario1 FOREIGN KEY (usuario_id) REFERENCES usuario (id)
) ;





COMMENT ON COLUMN comentario.id                 IS  'Identificador único para cada registro de la tabla\nCategoría.';
COMMENT ON COLUMN comentario.tipo               IS  'Categoría de comentario.';
COMMENT ON COLUMN comentario.contenido          IS  'Contenido/Cuerpo del comentario';
COMMENT ON COLUMN comentario.usuario_id         IS  'Usuario asociado a comentario.';
COMMENT ON COLUMN comentario.libro_id           IS  'Libro asociado a comentario.\r';



CREATE INDEX  fk_Comentario_Usuario1_idx       ON  comentario(usuario_id);
CREATE INDEX  fk_Comentario_Libro1_idx         ON  comentario(libro_id);




-- DDL for table cubiculo
CREATE TABLE cubiculo (
  id NUMBER NOT NULL  DEFAULT   cubiculo_seq.NEXTVAL ,
  posicion NUMBER NOT NULL ,
  ubicacion VARCHAR2(500)  NOT NULL ,
  estante_id NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Cubículo_Estante1 FOREIGN KEY (estante_id) REFERENCES estante (id)
) ;




COMMENT ON COLUMN cubiculo.id                       IS  'Identificador único para cada registro en \nla tabla cubículo';
COMMENT ON COLUMN cubiculo.posicion                 IS  'Posición del cubículo en el estante \nasociado.';
COMMENT ON COLUMN cubiculo.ubicacion                IS  'Ubicación del cubículo dentro del estante.\r';
COMMENT ON COLUMN cubiculo.estante_id               IS  'Estante asociado al cubículo\n';

CREATE INDEX fk_Cubículo_Estante1_idx               ON cubiculo(estante_id);



-- DDL for table descuento
CREATE TABLE descuento (
  id NUMBER NOT NULL  DEFAULT   descuento_seq.NEXTVAL ,
  fechaInicio DATE NOT NULL ,
  fechaFin DATE NOT NULL ,
  tipoDescuento VARCHAR2(100)  NOT NULL ,
  porcentaje NUMBER NOT NULL,
  detalleFactura_id NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Descuento_Detalle_Factura1 FOREIGN KEY (detalleFactura_id) REFERENCES detalleFactura (id)
) ;


COMMENT ON COLUMN descuento.id                      IS 'Identificador único para cada registro en \nla tabla descuento';
COMMENT ON COLUMN descuento.fechaInicio             IS 'Fecha de inicio de establecimiento del \ndescuento.';
COMMENT ON COLUMN descuento.fechaFin                IS 'Fecha de finalización de establecimiento \ndel descuento';
COMMENT ON COLUMN descuento.tipoDescuento           IS 'Tipo de Descuento, dependiendo de la \\nmembresía aplicada en la compra del usuario.\nDescuento por volumen: 10%\nDescuento por pronto pago: 5%\nDescuento promocional: 20%\nDescuento por fidelidad: 15%\nDescuento estacional: 25%\nDescuento por defectos: 30%\nDescuento por introducción: 10%';
COMMENT ON COLUMN descuento.porcentaje              IS 'Porcentaje del descuento';
COMMENT ON COLUMN descuento. detalleFactura_id      IS 'Detalles de Factura asociados a \ndescuento.\n';

CREATE INDEX fk_Descuento_Detalle_Factura1_idx      ON descuento(detalleFactura_id);





-- DDL for table detalleFactura
CREATE TABLE detalleFactura (
  id NUMBER NOT NULL  DEFAULT detalleFactura_seq.NEXTVAL ,
  descripcion VARCHAR2(100)  NOT NULL ,
  cantidad NUMBER NOT NULL ,
  precioUnitario NUMBER NOT NULL ,
  subTotal NUMBER NOT NULL ,
  total NUMBER NOT NULL ,
  factura_id NUMBER NOT NULL,
  libroVendido_id NUMBER NOT NULL ,
  membresía_id NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Detalle_Factura_Factura1 FOREIGN KEY (factura_id) REFERENCES factura (id),
  CONSTRAINT fk_Detalle_Factura_Libro_Vendido1 FOREIGN KEY (libroVendido_id) REFERENCES libroVendido (id),
  CONSTRAINT fk_Detalle_Factura_Membresía1 FOREIGN KEY (membresía_id) REFERENCES membresia (id)
) ;



COMMENT ON COLUMN   detalleFactura.id                     IS  'Identificador único para cada \nregistro en la tabla Detalle_Factura';
COMMENT ON COLUMN   detalleFactura.descripcion            IS  'Descripción de Factura';
COMMENT ON COLUMN   detalleFactura.cantidad               IS  'Cantidad de libros vendidos.\r';
COMMENT ON COLUMN   detalleFactura.precioUnitario         IS  'Precio Unitario de los libros.';
COMMENT ON COLUMN   detalleFactura.subTotal               IS  'Total, antes de impuestos y \\ndescuentos.';
COMMENT ON COLUMN   detalleFactura.total                  IS  'Total después de impuestos y \\ndescuentos.';
COMMENT ON COLUMN   detalleFactura.factura_id             IS  'Factura asociada de detalles de \nespecificación de venta.\r';
COMMENT ON COLUMN   detalleFactura.libroVendido_id        IS  'Libro vendido asociado de detalles \nde especificación de venta.';
COMMENT ON COLUMN   detalleFactura.membresía_id           IS  'Membresía asociada de detalles de \nespecificación de venta';


CREATE INDEX  fk_Detalle_Factura_Factura1_idx             ON  detalleFactura(factura_id);
CREATE INDEX  fk_Detalle_Factura_Libro_Vendido1_idx       ON  detalleFactura(libroVendido_id);
CREATE INDEX  fk_Detalle_Factura_Membresía1_idx           ON  detalleFactura(membresía_id);



-- DDL for table devolucion
CREATE TABLE devolucion (
  id NUMBER NOT NULL  DEFAULT devolucion_seq.NEXTVAL,
  estadoLibro VARCHAR2(100)  NOT NULL ,
  causa VARCHAR2(100) CHARACTER  NOT NULL ,
  costoDevolucion VARCHAR2(100)  NOT NULL ,
  usuario_id NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Devolución_Usuario1 FOREIGN KEY (usuario_id) REFERENCES usuario (id)
);


COMMENT ON COLUMN devolucion.id                     IS 'Identificador único para cada registro en \nla tabla Devolución. ';
COMMENT ON COLUMN devolucion.estadoLibro            IS 'Estado de libro devuelto.';
COMMENT ON COLUMN devolucion.causa                  IS 'Justificación de devolución';
COMMENT ON COLUMN devolucion.costoDevolucion        IS 'Costo aplicado a la devolución del libro';
COMMENT ON COLUMN devolucion.usuario_id             IS 'Usuario asociado a devolución realizada.';


CREATE INDEX  fk_Devolución_Usuario1_idx            ON devolucion(usuario_id);




-- DDL for table direccionEditorial
CREATE TABLE direccionEditorial (
  id NUMBER NOT NULL  DEFAULT direccionEditorial_seq.NEXTVAL ,
  pais VARCHAR2(100)  NOT NULL ,
  estados VARCHAR2(100)  NOT NULL ,
  ciudad VARCHAR2(100)  NOT NULL ,
  calle VARCHAR2(100)  DEFAULT NULL ,
  numero VARCHAR2(100)  DEFAULT NULL ,
  codigoPostal VARCHAR2(100)  NOT NULL ,
  referencia VARCHAR2(100)  NOT NULL ,
  PRIMARY KEY (id)
) ;



COMMENT ON COLUMN direccionEditorial.id               IS    'Identificador único para cada registro \nen la tabla Direccion_Editorial\r';
COMMENT ON COLUMN direccionEditorial.pais             IS    'País asociado a la dirección.';
COMMENT ON COLUMN direccionEditorial.estados          IS    'Estado/Provincia asociado a la \\ndirección.';
COMMENT ON COLUMN direccionEditorial.ciudad           IS    'Ciudad asociada a la dirección.';
COMMENT ON COLUMN direccionEditorial.calle            IS    'Calle asociada a la dirección.';
COMMENT ON COLUMN direccionEditorial.numero           IS    'Numero de edificación asociada a la \ndirección.';
COMMENT ON COLUMN direccionEditorial.codigoPostal     IS    'Código Postal asociado a la dirección.';
COMMENT ON COLUMN direccionEditorial.referencia       IS    'Referencia informal asociada a la \ndirección.';







-- DDL for table direccionPersona
CREATE TABLE direccionPersona (
  id NUMBER NOT NULL  DEFAULT direccionPersona_seq.NEXTVAL,
  pais VARCHAR2(100)  NOT NULL ,
  estado VARCHAR2(100)  NOT NULL ,
  ciudad VARCHAR2(100)  NOT NULL ,
  calle VARCHAR2(100)  DEFAULT NULL ,
  numero VARCHAR2(100)  DEFAULT NULL ,
  codigoPostal VARCHAR2(100)  DEFAULT NULL ,
  referencia VARCHAR2(500)  NOT NULL ,
  persona_id NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Direccion_Persona_Persona1 FOREIGN KEY (persona_id) REFERENCES persona(id)
) ;


COMMENT ON COLUMN direccionPersona.id               IS  'Identificador único para cada \nregistro en la tabla \nDireccion_Persona.';
COMMENT ON COLUMN direccionPersona.pais             IS  'País asociado a la dirección.';
COMMENT ON COLUMN direccionPersona.estado           IS  'Estado/Provincia asociado a la \\ndirección.\\r';
COMMENT ON COLUMN direccionPersona.ciudad           IS  'Ciudad asociada a la dirección.';
COMMENT ON COLUMN direccionPersona.calle            IS  'Calle asociada a la dirección.';
COMMENT ON COLUMN direccionPersona.numero           IS  'Numero de edificación asociada a la \ndirección.\r';
COMMENT ON COLUMN direccionPersona.codigoPostal     IS  'Código Postal asociado a la \ndirección.';
COMMENT ON COLUMN direccionPersona.referencia       IS  'Referencia informal asociada a la \ndirección.\r';
COMMENT ON COLUMN direccionPersona.persona_id       IS  'Persona asociada a su dirección. ';


CREATE INDEX  fk_Direccion_Persona_Persona1_idx     ON direccionPersona(persona_id);





-- DDL for table donacion
CREATE TABLE donacion (
  id NUMBER NOT NULL  DEFAULT donacion_seq.NEXTVAL ,
  libro_id NUMBER NOT NULL ,
  persona_id NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Donación_Libro1 FOREIGN KEY (libro_id) REFERENCES libro (id),
  CONSTRAINT fk_Donación_Persona1 FOREIGN KEY (persona_id) REFERENCES persona (id)
) ;

COMMENT ON COLUMN donacion.id             IS  'Identificador único para cada registro en la \ntabla Donación.';
COMMENT ON COLUMN donacion.libro_id       IS  'Libro asociado a donación realizada.\r';
COMMENT ON COLUMN donacion.persona_id     IS  'Persona asociada a la donación efectuada.\n';


CREATE INDEX    fk_Donación_Libro1_idx     ON donacion(libro_id);
CREATE INDEX    fk_Donación_Libro1_idx     ON donacion(persona_id);



-- DDL for table editorial
CREATE TABLE editorial (
  id NUMBER NOT NULL  DEFAULT editorial_seq.NEXTVAL ,
  nombre VARCHAR2(100)  NOT NULL,
  correoElectronico VARCHAR2(500)  NOT NULL ,
  PRIMARY KEY (id)
) ;



COMMENT ON COLUMN editorial.id                    IS  'Identificador único para cada registro \nen la tabla Editorial.';
COMMENT ON COLUMN editorial.nombre                IS  'Nombre de la Editorial.\r';
COMMENT ON COLUMN editorial.correoElectronico     IS  'Correo Electrónico de la Editorial';





-- DDL de la tabla empleado
CREATE TABLE empleado (
  id NUMBER NOT NULL  DEFAULT empleado_seq.NEXTVAL ,
  persona_id NUMBER NOT NULL ,
  cargo_id NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Empleado_Cargo1 FOREIGN KEY (cargo_id) REFERENCES cargo (id),
  CONSTRAINT fk_Empleado_Persona1 FOREIGN KEY (persona_id) REFERENCES persona (id)
);


COMMENT ON COLUMN empleado.id               IS 'Identificador único para cada registro en la tabla Empleado.';
COMMENT ON COLUMN empleado.persona_id       IS 'Un empleado es una persona.';
COMMENT ON COLUMN empleado.cargo_id         IS 'Un empleado desempeña un cargo.';

CREATE INDEX fk_Empleado_Persona1_idx       ON empleado(persona_id);
CREATE INDEX fk_Empleado_Cargo1_idx         ON empleado(cargo_id);


--DDL DE LA TABLA ESTADO CUENTA

CREATE TABLE estadoCuenta (
  id NUMBER  NOT NULL  DEFAULT estadoCuenta_seq.NEXTVAL  ,
  tipo char(1)  NOT NULL ,
  motivo varchar2(100)  NOT NULL,
  PRIMARY KEY (id)
);


COMMENT ON COLUMN  estadoCuenta.id   	IS 	'Identificador único para cada registro en la \ntabla Estado_Cuenta';
COMMENT ON COLUMN estadoCuenta.tipo 	IS  'Tipo de Estado. \n\nDonde A=Activo y I=Inactivo' ;
COMMENT ON COLUMN estadoCuenta.motivo 	IS 	'Motivo de Estado de Cuenta.';



--DDL DE LA TABLA DE ESTANTE


CREATE TABLE estante (
  id NUMBER NOT NULL     DEFAULT estante_seq.NEXTVAL,
  numEstannt NUMBER NOT NULL ,
  cantidadCubiculo NUMBER NOT NULL  ,
  ubicacion VARCHAR2(500)  NOT NULL ,
  area_id NUMBER NOT NULL ,
  biblioteca_id NUMBER NOT NULL  ,
  PRIMARY KEY (id),
  KEY fk_Estante_Area1_idx (area_id),
  KEY fk_Estante_Biblioteca1_idx (`biblioteca_id`),
  CONSTRAINT fk_Estante_Area1 FOREIGN KEY (area_id) REFERENCES area (id),
  CONSTRAINT fk_Estante_Biblioteca1 FOREIGN KEY (biblioteca_id) REFERENCES biblioteca (id)
) ;


COMMENT ON COLUMN  	estante.id					IS 				'Identificador único para cada registro en \nla tabla Estante.';
COMMENT ON COLUMN 	estante.numEstannt			IS 				'Numero asociado a estante.';
COMMENT ON COLUMN 	estante.cantidadCubiculo 	IS 				'Cantidad de cubículos que conforman el \nestante.';
COMMENT ON COLUMN 	estante.ubicacion 			IS 				'Ubicación de estante dentro de la \nbiblioteca\r';
COMMENT ON COLUMN 	estante.area_id 			IS 				'Área en la biblioteca asociada a estante.\r';
COMMENT ON COLUMN 	estante.biblioteca_id		IS				'Biblioteca asociada al estante.\n';

CREATE INDEX fk_Estante_Area1_idx               ON estante(area_id);
CREATE INDEX fk_Estante_Biblioteca1_idx         ON estante(biblioteca_id);



-- DDL for table evento

CREATE TABLE evento (
  id NUMBER  NOT NULL    DEFAULT evento_seq.NEXTVAL,
  tipo VARCHAR2(100)  NOT NULL ,
  fecha DATE NOT NULL,
  horaInicio TIMESTAMP DEFAULT NULL,
  horaFin TIMESTAMP DEFAULT NULL,
  PRIMARY KEY (id)
) ;

COMMENT ON COLUMN evento.id                            IS      'Identificador único para cada registro en \nla tabla Evento';
COMMENT ON COLUMN evento.tipo                          IS      'Tipo de evento a realizar.';
COMMENT ON COLUMN evento.fecha                         IS      'Fecha del evento.';



-- DDL for table factura
CREATE TABLE factura (
  id NUMBER  NOT NULL        DEFAULT factura_seq.NEXTVAL,
  fechaEmision TIMESTAMP DEFAULT NULL,
  formaPago_id NUMBER NOT NULL,
  usuario_id NUMBER NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_factura_formaPago1 FOREIGN KEY (formaPago_id) REFERENCES formaPago (id),
  CONSTRAINT fk_factura_usuario1 FOREIGN KEY (usuario_id) REFERENCES usuario (id)
) ;



COMMENT ON COLUMN factura.id                    IS  'Identificador único para cada registro en la \ntabla Factura';

CREATE INDEX fk_factura_formaPago1_idx          ON factura (formaPago_id);
CREATE INDEX fk_factura_usuario1_idx            ON factura (usuario_id);





-- DDL for table formaPago
CREATE TABLE formaPago (
  id NUMBER NOT NULL     DEFAULT formaPago_seq.NEXTVAL,
  tipo VARCHAR2(45)  NOT NULL ,
  PRIMARY KEY (id)
) ;

COMMENT ON COLUMN formaPago.id                  IS     'Identificador único para cada registro en \nla tabla Forma_de_Pago\r';
COMMENT ON COLUMN formaPago.id                  IS     'Tipo de forma de pago.\n';



-- DDL for table formatoLibro
CREATE TABLE formatoLibro (
  id NUMBER NOT NULL  DEFAULT formatoLibro_seq.NEXTVAL,
  tipo VARCHAR2(100)  NOT NULL ,
  observacion VARCHAR2(500)  NULL,
  precio VARCHAR2(100)  NOT NULL ,
  PRIMARY KEY (id)
) ;


COMMENT ON COLUMN formatoLibro.id               IS  'Identificador único para cada registro en la \ntabla Formato_Libro';
COMMENT ON COLUMN formatoLibro.tipo             IS  'Tipo de formato de libro';
COMMENT ON COLUMN formatoLibro.precio           IS  'Precio aplicado sobre el formato del libro.';



-- DDL for table horarioBiblioteca
CREATE TABLE horarioBiblioteca (
  id NUMBER  NOT NULL  DEFAULT horarioBiblioteca_seq.NEXTVAL,
  fecha DATE NOT NULL ,
  horaApertura TIMESTAMP NOT NULL ,
  horaCierre VARCHAR2(100)  NOT NULL,
  biblioteca_id NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Horario_Biblioteca_Biblioteca1 FOREIGN KEY (biblioteca_id) REFERENCES biblioteca (id)
) ;


COMMENT ON COLUMN horarioBiblioteca.id                      IS      'Identificador único para cada registro en \nla tabla Horario_Biblioteca';
COMMENT ON COLUMN horarioBiblioteca.fecha                   IS      'Fecha de aplicación del Horario';
COMMENT ON COLUMN horarioBiblioteca.horaApertura            IS      'Hora de apertura de la biblioteca.\r';
COMMENT ON COLUMN horarioBiblioteca.horaCierre              IS      'Hora de cierre de la biblioteca.\r';
COMMENT ON COLUMN horarioBiblioteca.biblioteca_id           IS      'Biblioteca asociada a su horario.';

CREATE INDEX fk_Horario_Biblioteca_Biblioteca1_idx ON horarioBiblioteca(biblioteca_id)


-- DDL for table horarioEmpleado
CREATE TABLE horarioEmpleado (
  id NUMBER NOT NULL  DEFAULT horarioEmpleado_seq.NEXTVAL,
  turno VARCHAR2(100)  NOT NULL ,
  horaIngreso TIMESTAMP NOT NULL  ,
  horaEgreso TIMESTAMP DEFAULT NULL ,
  cantidad NUMBER DEFAULT NULL ,
  empleado_id NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Horario_Empleado_Empleado1 FOREIGN KEY (empleado_id) REFERENCES empleado (id)
) ;


COMMENT ON COLUMN horarioEmpleado.id                    IS 'Identificador único para cada registro en \nla tabla Horario_Empleado\r';
COMMENT ON COLUMN horarioEmpleado.turno                 IS 'Turno del empleado.\r';
COMMENT ON COLUMN horarioEmpleado.horaIngreso           IS 'Hora de ingreso del empleado.\r';
COMMENT ON COLUMN horarioEmpleado.horaEgreso            IS 'Hora de egreso del empleado';
COMMENT ON COLUMN horarioEmpleado.cantidad              IS 'Cantidad de horas trabajadas.\r';
COMMENT ON COLUMN horarioEmpleado.empleado_id           IS 'Empleado asociado a su horario.\r';

CREATE INDEX    fk_Horario_Empleado_Empleado1_idx    ON horarioEmpleado(empleado_id)



-- DDL for table impuesto
CREATE TABLE impuesto (
  id NUMBER NOT NULL  DEFAULT impuesto_seq.NEXTVAL,
  tipo VARCHAR2(100)  NOT NULL,
  porcentajeImpuesto NUMBER NOT NULL ,
  detalleFactura_ID NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Impuesto_Detalle_Factura1 FOREIGN KEY (detalleFactura_ID) REFERENCES detalleFactura (id)
) ;


COMMENT ON COLUMN impuesto.id                   IS  'Identificador único para cada registro \nen la tabla Impuesto';
COMMENT ON COLUMN impuesto.tipo                 IS  'Tipo de impuesto.\r';
COMMENT ON COLUMN impuesto.porcentajeImpuesto   IS  'Porcentaje a aplicar en impuesto.';
COMMENT ON COLUMN impuesto.detalleFactura_ID    IS  'Detalle de facturación asociado a \nimpuesto sobre factura.\n';

CREATE INDEX fk_Impuesto_Detalle_Factura1_idx   ON impuesto(detalleFactura_ID);

-- DDL for table libro
CREATE TABLE libro (
  id NUMBER NOT NULL     DEFAULT libro_seq.NEXTVAL ,
  titulo VARCHAR2(500)  NOT NULL,
  fecha_publicacion DATE NOT NULL ,
  idioma VARCHAR2(45)  NOT NULL ,
  isbn VARCHAR2(45)  NOT NULL ,
  numEdicion NUMBER NOT NULL ,
  numPaginas NUMBER NOT NULL ,
  url VARCHAR2(1500)  DEFAULT NULL,
  editorial_id NUMBER NOT NULL,
  biblioteca_id NUMBER NOT NULL ,
  imagen BLOB,
  PRIMARY KEY (id),
  CONSTRAINT fk_Libro_Biblioteca1 FOREIGN KEY (biblioteca_id) REFERENCES biblioteca (id),
  CONSTRAINT fk_Libro_Editorial1 FOREIGN KEY (editorial_id) REFERENCES editorial (id)
) ;


COMMENT ON COLUMN libro.id                  IS  'Identificador único para cada registro \nen la tabla Libro.\r';
COMMENT ON COLUMN libro.titulo              IS  'Título del libro.';
COMMENT ON COLUMN libro.fecha_publicacion   IS  'Fecha de Publicación del libro';
COMMENT ON COLUMN libro.idioma              IS  'Idioma del libro.';
COMMENT ON COLUMN libro.isbn                IS  'ISBN (International Standard Book \nNumber) es un código normalizado \ninternacional para libros.\r';
COMMENT ON COLUMN libro.numEdicion          IS  'NÚmero de edición.\r';
COMMENT ON COLUMN libro.numPaginas          IS  'Número de páginas que conforman el \nlibro.\r';
COMMENT ON COLUMN libro.editorial_id        IS  'Editorial asociada al libro.';
comment ON COLUMN libro.biblioteca_id       IS  'Biblioteca asociada al libro.';

CREATE INDEX fk_Libro_Editorial1_idx        ON libro(editorial_id);
CREATE INDEX fk_Libro_Biblioteca1_idx       ON libro(biblioteca_id);


-- DDL for table libroComprado
CREATE TABLE libroComprado (
  id NUMBER NOT NULL  DEFAULT libroComprado_seq.NEXTVAL,
  precio    VARCHAR2(100)  NOT NULL ,
  libro_id NUMBER NOT NULL ,
  PRIMARY KEY (`id`),
  CONSTRAINT fk_Libro_Comprado_Libro1 FOREIGN KEY (libro_id) REFERENCES libro (id)
) ;


COMMENT ON COLUMN libroComprado.id              IS  'Identificador único para cada registro en \nla tabla Libro';
COMMENT ON COLUMN libroComprado.precio          IS  'Precio de libro comprado.';
COMMENT ON COLUMN libroComprado.libro_id        IS  'Libro asociado a Libro comprado.\n';

CREATE INDEX fk_Libro_Comprado_Libro1_idx       ON libroComprado(libro_id);

-- DDL for table libroPerdido
CREATE TABLE libroPerdido (
  id NUMBER NOT NULL  DEFAULT libroPerdido_seq.NEXTVAL ,
  libro_id NUMBER NOT NULL ,
  usuario_id NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Libros_Perdidos_Libro1 FOREIGN KEY (libro_id) REFERENCES libro (id),
  CONSTRAINT fk_Libros_Perdidos_Usuario1 FOREIGN KEY (usuario_id) REFERENCES usuario (id)
) ;


COMMENT ON COLUMN libroPerdido.id                   IS  'Identificador único para cada registro en la \ntabla Libros_Perdidos';
COMMENT ON COLUMN libroPerdido.libro_id             IS  'Libro asociado libro perdido';
COMMENT ON COLUMN libroPerdido.usuario_id           IS  'Usuario asociado a libro perdido.';


CREATE INDEX    fk_Libros_Perdidos_Libro1_idx       ON  libroPerdido(libro_id);
CREATE INDEX    fk_Libros_Perdidos_Usuario1_idx     ON  libroPerdido(usuario_id);




-- DDL for table libroVendido
CREATE TABLE libroVendido (
  id NUMBER NOT NULL  DEFAULT libroVendido_seq.NEXTVAL ,
  libro_id NUMBER NOT NULL ,
  usuario_id NUMBER NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_Libro_Vendido_Libro1 FOREIGN KEY (libro_id) REFERENCES libro (id),
  CONSTRAINT fk_libroVendido_usuario1 FOREIGN KEY (usuario_id) REFERENCES usuario (id)
) ;



COMMENT ON COLUMN libroVendido.id                   IS  'Identificador único para cada registro en la \ntabla Libro_Vendido';
COMMENT ON COLUMN libroVendido.libro_id             IS  'Libro asociado a venta.\r';

CREATE INDEX  fk_Libro_Vendido_Libro1_idx           ON libroVendido(libro_id);
CREATE INDEX  fk_libroVendido_usuario1_idx          ON libroVendido(usuario_id);



-- DDL for table libro_has_cubiculo
CREATE TABLE libro_has_cubiculo (
  libro_id NUMBER NOT NULL,
  cubiculo_id NUMBER NOT NULL,
  PRIMARY KEY (libro_id,cubiculo_id),
  CONSTRAINT fk_libro_has_cubiculo_cubiculo1 FOREIGN KEY (cubiculo_id) REFERENCES cubiculo (id),
  CONSTRAINT fk_libro_has_cubiculo_libro1 FOREIGN KEY (libro_id) REFERENCES libro (id)
) ;

CREATE INDEX fk_libro_has_cubiculo_cubiculo1_idx     ON libro_has_cubiculo(cubiculo_id);
CREATE INDEX fk_libro_has_cubiculo_libro1            ON libro_has_cubiculo(libro_id);





-- DDL for table membresia
CREATE TABLE membresia (
  id NUMBER NOT NULL     DEFAULT membresia_seq.NEXTVAL ,
  tipo VARCHAR2(2) NOT NULL ,
  duracion VARCHAR2(100)  NOT NULL ,
  usuario_id NUMBER NOT NULL ,
  porcentaje NUMBER DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_Membresía_Usuario1 FOREIGN KEY (usuario_id) REFERENCES usuario (id)
) ;


COMMENT ON COLUMN membresia.id          IS  'Identificador único para cada registro en \nla tabla Membresía.\r';
COMMENT ON COLUMN membresia.tipo        IS  'Duración de la membresía.';
COMMENT ON COLUMN membresia.duracion    IS  'Usuario asociado a una membresía.';

CREATE INDEX   fk_Membresía_Usuario1_idx  ON membresia(usuario_id);



-- DDL for table multa
CREATE TABLE multa (
  id    NUMBER NOT NULL  DEFAULT multa_seq.NEXTVAL,
  monto VARCHAR2(45) NOT NULL,
  fechaPago DATE NOT NULL ,
  motivo VARCHAR2(500)  NOT NULL ,
  usuario_id NUMBER NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_Multa_Usuario1 FOREIGN KEY (usuario_id) REFERENCES usuario (id)
) ;


COMMENT ON COLUMN multa.id              IS  'Identificador único para cada registro en la \ntabla Multa\r';
COMMENT ON COLUMN multa.monto           IS  'Monto a pagar por multa aplicada.';
COMMENT ON COLUMN multa.fechaPago       IS  'Fecha de pago de la multa.';
COMMENT ON COLUMN multa.motivo          IS  'Motivo, justificación de la multa aplicada.\r';
COMMENT ON COLUMN multa.usuario_id      IS  'Usuario asociado a multa aplicada.\r';

CREATE INDEX fk_Multa_Usuario1_idx ON multa(usuario_id);


-- DDL for table persona
CREATE TABLE persona (
  id NUMBER  NOT NULL    DEFAULT persona_seq.NEXTVAL,
  nombre1 VARCHAR2(45)  NOT NULL ,
  nombre2 VARCHAR2(500)  DEFAULT NULL ,
  apellido1 VARCHAR2(45)  NOT NULL,
  apellido2 VARCHAR2(500)  DEFAULT NULL ,
  correoElectronico VARCHAR2(45) DEFAULT NULL ,
  fechaNacimiento DATE DEFAULT NULL ,
  PRIMARY KEY (id)
) ;

COMMENT ON COLUMN persona.id                     IS 'Identificador único para cada \nregistro en la tabla Persona.';
COMMENT ON COLUMN persona.nombre1                IS 'Primer nombre de la persona.';
COMMENT ON COLUMN persona.nombre2                IS 'Segundo y/o tercer nombre de la \npersona.';
COMMENT ON COLUMN persona.apellido1              IS 'Primer apellido de la persona.';
COMMENT ON COLUMN persona.apellido2              IS 'Segundo y/o tercer apellido de la \npersona.';
COMMENT ON COLUMN persona.correoElectronico      IS 'Correo electrónico de la persona';
COMMENT ON COLUMN persona.fechaNacimiento        IS 'Fecha de nacimiento de la persona.\n';



-- DDL for table prestamo
CREATE TABLE prestamo (
  id  NUMBER NOT NULL    DEFAULT prestamo_seq.NEXTVAL,
  fechaPrestamo DATE NOT NULL ,
  fechaRegreso DATE NOT NULL ,
  estadoPrestamo VARCHAR2(100)  NOT NULL ,
  usuario_id NUMBER NOT NULL,
  libro_id NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Préstamo_Libro1 FOREIGN KEY (libro_id) REFERENCES libro (id),
  CONSTRAINT fk_Préstamo_Usuario1 FOREIGN KEY (usuario_id) REFERENCES usuario (id)
) ;



COMMENT ON COLUMN prestamo.id                            IS      'Identificador único para cada registro en \nla tabla Préstamo.';
COMMENT ON COLUMN prestamo.fechaPrestamo                 IS      'Fecha de adquisición de préstamo.\r';
COMMENT ON COLUMN prestamo.fechaRegreso                  IS      'Fecha de retorno del préstamo.\r';
COMMENT ON COLUMN prestamo.estadoPrestamo                IS      'Estado de préstamo del libro.\r';
COMMENT ON COLUMN prestamo.usuario_id                    IS      'Usuario asociado a préstamo.\r';
COMMENT ON COLUMN prestamo.libro_id                      IS      'Libro asociado a préstamo.\r';


CREATE INDEX fk_Préstamo_Usuario1_idx                   ON prestamo(usuario_id);
CREATE INDEX fk_Préstamo_Libro1_idx                     ON prestamo(libro_id);





-- DDL for table proveedor
CREATE TABLE proveedor (
  id NUMBER NOT NULL         DEFAULT proveedor_seq.NEXTVAL,
  persona_id NUMBER NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_Proveedor_Persona1 FOREIGN KEY (persona_id) REFERENCES persona (id)
) ;


COMMENT ON COLUMN proveedor.id              IS  'Identificador único para cada registro en la \ntabla Proveedor.';
COMMENT ON COLUMN proveedor.persona_id      IS   'Un proveedor es una persona.\r';

CREATE INDEX    fk_Proveedor_Persona1_idx ON  proveedor(persona_id);


-- DDL for table salario
CREATE TABLE salario (
  id NUMBER NOT NULL         DEFAULT salario_seq.NEXTVAL,
  hora_extra NUMBER DEFAULT NULL ,
  bono double DEFAULT NULL ,
  catorceavo double DEFAULT NULL ,
  deduccion double DEFAULT NULL ,
  total double NOT NULL COMMENT 'Total de salario.\r',
  Fecha DATE NOT NULL,
  PRIMARY KEY (id)
) ;


COMMENT ON COLUMN salario.id                        IS  'Identificador único para cada \nregistro en la tabla Salario.\r';
COMMENT ON COLUMN salario.hora_extra                IS  'Horas extras asociadas al salario.';
COMMENT ON COLUMN salario.bono                      IS  'Bonos asociados.\r';
COMMENT ON COLUMN salario.catorceavo                IS  'Catorceavo asociado';
COMMENT ON COLUMN salario.deduccion                 IS  'Deducciones asociadas.';
COMMENT ON COLUMN salario.total                     IS  'Total de salario.\r';





-- DDL for table sancion
CREATE TABLE sancion (
  id NUMBER NOT NULL  DEFAULT sancion_seq.NEXTVAL,
  tipo VARCHAR2(100)  NOT NULL ,
  cantidadMultas    NUMBER NOT NULL ,
  usuario_id NUMBER NOT NULL ,
  libroPerdido_id NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Sanción_Libros_Perdidos1 FOREIGN KEY (libroPerdido_id) REFERENCES libroPerdido (id),
  CONSTRAINT fk_Sanción_Usuario1 FOREIGN KEY (usuario_id) REFERENCES usuario (id)
) ;

COMMENT ON COLUMN sancion.id                    IS 'Identificador único para cada registro en \nla tabla Sanción. ';
COMMENT ON COLUMN sancion.tipo                  IS 'Tipo de sanción.';
COMMENT ON COLUMN sancion.cantidadMultas        IS 'Cantidad de multas asociadas a la \nsanción aplicada.\r';
COMMENT ON COLUMN sancion.usuario_id            IS 'Usuario asociado a sanción aplicada';
COMMENT ON COLUMN sancion.libroPerdido          IS 'Libros perdidos asociados a sanción. ';

CREATE INDEX fk_Sanción_Usuario1_idx            ON sancion(usuario_id);
CREATE INDEX fk_Sanción_Libros_Perdidos1_idx    ON sancion(libroPerdido_id);




-- DDL for table subArea
CREATE TABLE subArea (
  id NUMBER NOT NULL     DEFAULT subArea_seq.NEXTVAL,
  nombre VARCHAR2(45)  NOT NULL,
  ubicacion VARCHAR2(500)  NOT NULL ,
  año DATE NOT NULL ,
  area_id NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_SubArea_Area1 FOREIGN KEY (area_id) REFERENCES area (id)
) ;

COMMENT ON COLUMN subArea.id            IS   'Identificador único para cada registro en la \ntabla Subárea';
COMMENT ON COLUMN subArea.nombre        IS   'Nombre de subárea.';
COMMENT ON COLUMN subArea.ubicacion     IS   'Ubicación de subárea. ';
COMMENT ON COLUMN subArea.año           IS   'Año asociado a subárea.\r';
COMMENT ON COLUMN subArea.area_id       IS   'Área asociada a subárea. \n';

CREATE INDEX fk_SubArea_Area1_idx   ON subArea(area_id);



-- DDL for table subCategoria
CREATE TABLE subCategoria (
  id NUMBER NOT NULL  DEFAULT subCategoria_seq.NEXTVAL,
  nombre VARCHAR2(100)  NOT NULL,
  descripcion VARCHAR2(100)  NOT NULL ,
  area_id NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Subcategoría_Area1 FOREIGN KEY (area_id) REFERENCES area (id)
) ;


COMMENT ON COLUMN subCategoria.id                    IS  'Identificador único para cada registro en \nla tabla Subcategoría.\r';
COMMENT ON COLUMN subCategoria.nombre                IS  'Nombre de la subcategoría.\r';
COMMENT ON COLUMN subCategoria.descripcion           IS  'Descripción de la subcategoría.';
COMMENT ON COLUMN subCategoria.area_id               IS  'Área asociada a subcategoría.';

CREATE INDEX fk_Subcategoría_Area1_idx  ON subCategoria(area_id);




-- DDL for table subCategoria_has_categoria
CREATE TABLE subCategoria_has_categoria (
  subCategoria_id NUMBER NOT NULL,
  categoria_id NUMBER NOT NULL,
  PRIMARY KEY (subCategoria_id,categoria_id),
  CONSTRAINT fk_subCategoria_has_categoria_categoria1 FOREIGN KEY (categoria_id) REFERENCES categoria (id),
  CONSTRAINT fk_subCategoria_has_categoria_subCategoria1 FOREIGN KEY (subCategoria_id) REFERENCES subCategoria (id)
) ;


CREATE INDEX fk_subCategoria_has_categoria_categoria1_idx       ON subCategoria_has_categoria(categoria_id);
CREATE INDEX fk_subCategoria_has_categoria_subCategoria1_idx    ON subCategoria_has_categoria(subCategoria_id);


-- DDL for table sugerencia
CREATE TABLE sugerencia (
  id NUMBER NOT NULL  DEFAULT sugerencia_seq.NEXTVAL,
  contenido VARCHAR2(100)  NOT NULL ,
  usuario_id NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Sugerencias_Usuario1 FOREIGN KEY (usuario_id) REFERENCES usuario (id)
) ;

COMMENT ON COLUMN sugerencia.id             IS 'Identificador único para cada registro en \nla tabla Sugerencias.';
COMMENT ON COLUMN sugerencia.contenido      IS 'Contenido de la sugerencia.\r';
COMMENT ON COLUMN sugerencia.usuario_id     IS 'Usuario asociado a la sugerencia.\r';

CREATE INDEX fk_Sugerencias_Usuario1_idx   ON sugerencia(usuario_id);

-- DDL for table telefono
CREATE TABLE telefono (
  id NUMBER NOT NULL         DEFAULT telefono_seq.NEXTVAL,
  numTelefono VARCHAR2(45)  NOT NULL ,
  tipo VARCHAR2(45)  NOT NULL ,
  operador VARCHAR2(45)  NOT NULL ,
  persona_id NUMBER NOT NULL ,
  editorial_id NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Teléfono_Editorial1 FOREIGN KEY (editorial_id) REFERENCES editorial (id),
  CONSTRAINT fk_Teléfono_Persona1 FOREIGN KEY (persona_id) REFERENCES persona (id)
);


COMMENT ON COLUMN telefono.                 IS  'Identificador único para cada registro en \nla tabla Teléfono.';
COMMENT ON COLUMN telefono.                 IS  'Número de teléfono asociado.';
COMMENT ON COLUMN telefono.                 IS  'Tipo de número telefónico.';
COMMENT ON COLUMN telefono.                 IS  'Operador del número telefónico.\r';
COMMENT ON COLUMN telefono.                 IS  'Persona asociada a número telefónico';
COMMENT ON COLUMN telefono.                 IS  'Editorial asociada a número telefónico.\r';

CREATE INDEX fk_Teléfono_Persona1_idx       ON telefono(persona_id);
CREATE INDEX  fk_Teléfono_Editorial1_idx    ON telefono(editorial_id);



-- DDL for table usuario
CREATE TABLE usuario (
  id NUMBER  NOT NULL    DEFAULT usuario_seq.NEXTVAL,
  persona_id NUMBER NOT NULL ,
  estadoCuenta_id NUMBER NOT NULL,
  contraseña VARCHAR2(100)  DEFAULT NULL,
  token VARCHAR2(100)  DEFAULT NULL,
  rol NUMBER DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_Usuario_Estado_Cuenta1 FOREIGN KEY (estadoCuenta_id) REFERENCES estadoCuenta (id),
  CONSTRAINT fk_Usuario_Persona1 FOREIGN KEY (persona_id) REFERENCES persona (id)
);


COMMENT ON COLUMN usuario.id                   IS   'Identificador único para cada registro en la \ntabla Usuario.';
COMMENT ON COLUMN usuario.persona_id           IS   'Un usuario es una persona.\r';
COMMENT ON COLUMN usuario.estadoCuenta_id      IS   'Un usurario posee un estado de cuenta.\r';

CREATE INDEX fk_Usuario_Persona1_idx           ON usuario(persona_id);
CREATE INDEX fk_Usuario_Estado_Cuenta1_idx     ON usuario(estadoCuenta_id);



-- DDL for table valoracion
CREATE TABLE valoracion (
  id NUMBER  NOT NULL  DEFAULT valoracion_seq.NEXTVAL ,
  estrella VARCHAR2(45)  NOT NULL ,
  libro_id NUMBER NOT NULL ,
  usuario_id NUMBER NOT NULL ,
  PRIMARY KEY (id),
  CONSTRAINT fk_Valoración_Libro1 FOREIGN KEY (libro_id) REFERENCES libro (id),
  CONSTRAINT fk_Valoración_Usuario1 FOREIGN KEY (usuario_id) REFERENCES usuario (id)
);

COMMENT ON COLUMN valoracion.id             IS  'Identificador único para cada registro en la \ntabla Valoración.'
COMMENT ON COLUMN valoracion.estrella       IS  'Estrellas de la valoración'
COMMENT ON COLUMN valoracion.libro_id       IS  'Estrellas de la valoración'
COMMENT ON COLUMN valoracion. usuario_id    IS  'Usuario asociado a la valoración.'

CREATE INDEX fk_Valoración_Libro1_idx       ON  valoracion(libro_id);
CREATE INDEX fk_Valoración_Usuario1_idx     ON  valoracion(usuario_id);

