  CREATE TABLE administrador(
     
	usuario varchar(20) PRIMARY KEY NOT NULL,
  contraseña varchar(50)
     
     )
CREATE TABLE Listado(
    cedula varchar(20),
    carrera varchar(50),
    nombre varchar(20),
    apellido varchar(20),
    texto varchar(50),
    pagado varchar(3)
    )

GO
    INSERT INTO Administrador(usuario,contraseña) VALUES ("admin","admin")

    