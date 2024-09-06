CREATE DATABASE bd_teste_1e;
USE bd_teste_1e;

CREATE TABLE tbusuarios(
iduser INTEGER PRIMARY KEY,
usuario VARCHAR(50),
login VARCHAR(20),
senha VARCHAR(20),
perfil VARCHAR(20)
);

CREATE TABLE pessoa(
id INTEGER PRIMARY KEY,
bi VARCHAR(45),
nome VARCHAR(45),
data_nasc DATE,
telefone VARCHAR(45),
email VARCHAR(45),
morada VARCHAR(45)
);

CREATE TABLE tbfuncionarios(
idfunc INTEGER,
Nome VARCHAR(50),
Registro INTEGER PRIMARY KEY,
Guerra VARCHAR(30),
Gerencia VARCHAR(20),
Det VARCHAR(20),
Turno VARCHAR(10),
Cargo VARCHAR(30),
Atividade VARCHAR(50),
Funcao VARCHAR(30),
Vinculo VARCHAR(30),
Situacao VARCHAR(30)
);

DESCRIBE tbusuarios;
DESCRIBE pessoa;
DESCRIBE tbfuncionarios;

DROP TABLE tbusuarios;

ALTER TABLE tbfuncionarios RENAME TO tbfuncionario;
ALTER TABLE tbfuncionario RENAME COLUMN Guerra to area;
ALTER TABLE tbfuncionario RENAME COLUMN Turno to turno;
ALTER TABLE tbfuncionario RENAME COLUMN Funcao to funcao;

DESCRIBE tbfuncionario;

ALTER TABLE pessoa RENAME COLUMN data_nasc to datanascimento;
ALTER TABLE pessoa DROP morada;