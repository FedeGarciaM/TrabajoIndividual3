CREATE TABLE Notas (
    nombre VARCHAR
);

CREATE TABLE Usuarios(
    id INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR NOT NULL,
    Email TEXT NOT NULL,
    CONSTRAINT FKid FOREIGN KEY (id)
) ;

CREATE TABLE Categorias(
    ID AUTO_INCREMENT PRIMARY KEY INT NOT NULL,
    nombre_categoria VARCHAR NOT NULL,
) ;

CREATE TABLE Notas (
    id INT NOT NULL AUTO_INCREMENT,
    Título VARCHAR(100) NOT NULL,
    creación DATETIME NOT NULL,
    ultima_modificación DATETIME,
    Descripción TEXT NOT NULL,
    Categoria_id INT NOT NULL, 
    Usuario_id INT NOT NULL,
    CONSTRAINT PKID FOREIGN KEY (id),
    CONSTRAINT FKUsuario FOREIGN KEY (Usuario_id) REFERENCES Usuarios
) ;

CREATE TABLE Notas (
id INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
Titulo VARCHAR (100) NOT NULL,
Descripcion_nota VARCHAR (100) NOT NULL,
Fecha_creacion DATETIME,
Ultima_modificacion DATETIME,
Usuario_id INT (10) UNSIGNED NOT NULL,
CONSTRAINT PKid PRIMARY KEY (id),
CONSTRAINT FK_Usuario_id FOREIGN KEY (Usuario_id) REFERENCES Usuario(id)
);

