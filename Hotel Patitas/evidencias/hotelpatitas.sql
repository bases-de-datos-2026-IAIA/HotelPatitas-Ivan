CREATE DATABASE IF NOT EXISTS HotelPatitas;
USE HotelPatitas;
-- Cliente
CREATE TABLE IF NOT EXISTS Cliente(
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    calle VARCHAR(100) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    colonia VARCHAR(100) NOT NULL);
-- Mascota
CREATE TABLE IF NOT EXISTS Mascota(
	id_mascota INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    especie VARCHAR(20) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    peso DECIMAL(5, 2) NOT NULL,
    fecha_registro DATE NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente)
		REFERENCES Cliente (id_cliente));
-- Estancia
CREATE TABLE IF NOT EXISTS Estancia(
	id_estancia INT AUTO_INCREMENT PRIMARY KEY,
    fecha_entrada DATE NOT NULL,
    fecha_salida DATE NOT NULL,
    numero_espacio VARCHAR(10) NOT NULL,
    id_mascota INT NOT NULL,
    FOREIGN KEY (id_mascota)
		REFERENCES Mascota (id_mascota));
-- Servicio
CREATE TABLE IF NOT EXISTS Servicio(
	id_servicio INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    precio DECIMAL(8, 2) NOT NULL);
-- EstanciaServicio
CREATE TABLE IF NOT EXISTS EstanciaServicio(
	id_estancia INT NOT NULL,
    id_servicio INT NOT NULL,
    precio_cobrado DECIMAL(8,2) NOT NULL,
    PRIMARY KEY (id_estancia, id_servicio),
    FOREIGN KEY (id_estancia)
		REFERENCES Estancia (id_estancia),
	FOREIGN KEY (id_servicio)
		REFERENCES Servicio (id_servicio));

DESC EstanciaServicio;



DESC cliente;
DESC mascota;
DESC estancia;
DESC servicio;
DESC estanciaservicio;