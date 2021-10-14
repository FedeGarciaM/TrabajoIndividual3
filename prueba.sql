CREATE TABLE Usuarios(
    id INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR (100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    CONSTRAINT FKid PRIMARY KEY (id)
) ;

INSERT INTO Usuarios
VALUES (DEFAULT, "Federico", "fede@gmail.com"),
(DEFAULT, "Juan", "juan@gmail.com"),
(DEFAULT, "Maria", "Maria@gmail.com"),
(DEFAULT, "Vani", "Vani@gmail.com"),
(DEFAULT, "Franco", "Franco@gmail.com"),
(DEFAULT, "Jose", "Jose@gmail.com"),
(DEFAULT, "Marcelo", "Marcelo@gmail.com"),
(DEFAULT, "Agustina", "Agustina@gmail.com"),
(DEFAULT, "Claudio", "Claudio@gmail.com"),
(DEFAULT, "Oscar", "Oscar@gmail.com");


CREATE TABLE Notas (
    id INT(10) NOT NULL AUTO_INCREMENT,
    Título VARCHAR(100) NOT NULL,
    creación DATETIME NOT NULL,
    ultima_modificación DATETIME,
    Descripción TEXT NOT NULL,
    Usuario_id INT(10) UNSIGNED NOT NULL,
    CONSTRAINT PKID PRIMARY KEY (id),
    CONSTRAINT FKid FOREIGN KEY (Usuario_id) REFERENCES Usuarios(id)
) ;

INSERT INTO Notas
VALUES (DEFAULT, "Titulo1", "1995-08-20", "1995-08-20", "NOTA NUMERO UNO", 1);

INSERT INTO Notas
VALUES(DEFAULT, "Titulo2", "1995-08-20", "1995-08-20", "NOTA NUMERO DOS", 2);
INSERT INTO Notas
VALUES(DEFAULT, "Titulo3", "1995-08-20", NULL, "NOTA NUMERO TRES", 3),
(DEFAULT, "Titulo4", "1995-08-20", NULL, "NOTA NUMERO CUATRO", 4),
(DEFAULT, "Titulo5", "1995-08-20", NULL, "NOTA NUMERO CINCO", 5),
(DEFAULT, "Titulo6", "1995-08-20", NULL, "NOTA NUMERO SEIS", 6),
(DEFAULT, "Titulo7", "1995-08-20", NULL, "NOTA NUMERO SIETE", 7),
(DEFAULT, "Titulo8", "1995-08-20", NULL, "NOTA NUMERO OCHO", 7),
(DEFAULT, "Titulo9", "1995-08-20", NULL, "NOTA NUMERO NUEVE", 6),
(DEFAULT, "Titulo10", "1995-08-20", NULL, "NOTA NUMERO DIEZ", 4),
(DEFAULT, "Titulo11", "1995-08-20", NULL, "NOTA NUMERO ONCE", 2);

CREATE TABLE Categorias(
    ID  INT(10) NOT NULL AUTO_INCREMENT,
    nombre_categoria VARCHAR(100) NOT NULL,
    CONSTRAINT PKid PRIMARY KEY (ID)
) ;


INSERT INTO categorias
VALUES (1, "CAT1"),
(2, "CAT1"),(3, "CAT1"),(4, "CAT1"), (5, "CAT1"),
(6, "CAT1"), (7, "CAT1"), (8, "CAT1"), (9, "CAT1"), (10, "CAT1");

CREATE TABLE Notas_Categorias(
    categoria_id INT(10) NOT NULL,
    notas_id INT(10) NOT NULL,
    CONSTRAINT FK_CategoriaID FOREIGN KEY (categoria_id) REFERENCES Categorias(ID),
    CONSTRAINT FK_NotasID FOREIGN KEY (notas_id) REFERENCES Notas(id)
);


