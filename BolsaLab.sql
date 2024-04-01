
CREATE TABLE usuarios (
                id VARCHAR NOT NULL,
                nombres VARCHAR(50) NOT NULL,
                apellidos VARCHAR(50) NOT NULL,
                dni INT NOT NULL,
                direcion VARCHAR(50) NOT NULL,
                telefono INT NOT NULL,
                usuario VARCHAR(50) NOT NULL,
                contraseña VARCHAR(200) NOT NULL,
                rol_id VARCHAR(50) NOT NULL,
                ruta_foto VARCHAR NOT NULL,
                ruta_cv VARCHAR(50) NOT NULL,
                PRIMARY KEY (id)
);


CREATE TABLE empresa  (
                id NUMERIC(30) NOT NULL,
                razon_social  VARCHAR(200) NOT NULL,
                RUC NUMERIC NOT NULL,
                direcion VARCHAR NOT NULL,
                telefono NUMERIC(10) NOT NULL,
                correo VARCHAR(120) NOT NULL,
                id_rol VARCHAR(20) NOT NULL,
                id_usuario VARCHAR(20) NOT NULL,
                PRIMARY KEY (id)
);


CREATE TABLE oferta_laboral (
                id VARCHAR NOT NULL,
                id_empresa VARCHAR(50) NOT NULL,
                titulo VARCHAR(50) NOT NULL,
                descripcion VARCHAR(50) NOT NULL,
                fecha_publicacion VARCHAR(50) NOT NULL,
                fecha_cierre VARCHAR(50) NOT NULL,
                remuneracion VARCHAR(50) NOT NULL,
                ubicación VARCHAR(50) NOT NULL,
                tipo VARCHAR(50) NOT NULL,
                limite_postulantes VARCHAR(50) NOT NULL,
                empresa _id_1 NUMERIC(30) NOT NULL,
                PRIMARY KEY (id)
);


CREATE TABLE postulaciones (
                id VARCHAR NOT NULL,
                id_usuario VARCHAR(30) NOT NULL,
                id_oferta VARCHAR(20) NOT NULL,
                dni NUMERIC(10) NOT NULL,
                fecha_hora_postulacion VARCHAR NOT NULL,
                estado_actual  VARCHAR(50) NOT NULL,
                usuario_seleccionado VARCHAR(70) NOT NULL,
                PRIMARY KEY (id)
);


ALTER TABLE postulaciones ADD CONSTRAINT usuarios_postulantes_fk
FOREIGN KEY (id)
REFERENCES usuarios (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE oferta_laboral ADD CONSTRAINT empresa__oferta_laboral_fk1
FOREIGN KEY (empresa _id_1)
REFERENCES empresa  (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE postulaciones ADD CONSTRAINT oferta_laboral_postulaciones_fk
FOREIGN KEY (id)
REFERENCES oferta_laboral (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
