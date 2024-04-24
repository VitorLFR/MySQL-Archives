USE alazon;

create table jogosEletronicos(
	JogoId INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(100),
    Desenvolvedora varchar(100),
    Plataforma varchar(50),
    AnoLancamento INT
    );
    
create table filmes(
	FilmeId INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Titulo VARCHAR(100),
    Diretor varchar(100),
    Genero varchar(50),
    AnoLancamento INT
    );
    
create table livros(
	LivroId INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Titulo VARCHAR(100),
    Autor varchar(100),
    Genero varchar(50),
    AnoPublicacao INT
    );
    
create table musicas(
	MusicaId INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Titulo VARCHAR(100),
    Artista varchar(100),
    Album varchar(50),
    Ano INT
    );
    
 create table esportes(
	EsporteId INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(100),
    Tipo varchar(50),
    PopularidadeGlobal varchar(50)
    );