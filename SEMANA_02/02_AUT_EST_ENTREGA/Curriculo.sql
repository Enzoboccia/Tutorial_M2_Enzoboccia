CREATE TABLE INSTANCE.Exepriencia ( 
	ID_Experiencia       TEXT NOT NULL  PRIMARY KEY  ,
	"Experiencia de trabalho" TEXT     ,
	"Experiencia de trabalho2" TEXT     ,
	"Experiencia de trabalho3" TEXT     ,
	"Experiencia de trabalho4" TEXT     
 );

CREATE TABLE INSTANCE.Formação ( 
	ID_formação          TEXT NOT NULL  PRIMARY KEY  ,
	Escola               TEXT     ,
	Faculdade            TEXT     ,
	Cursos               TEXT     
 );

CREATE TABLE INSTANCE.Realizaçoes ( 
	ID_Realizaçoes       TEXT NOT NULL  PRIMARY KEY  ,
	"Trabalhos que ja fez" TEXT     ,
	Premios              TEXT     ,
	Idiomas              INTEGER     
 );

CREATE TABLE INSTANCE.Pessoa ( 
	"Nome:"              TEXT     ,
	"Numero de celular"  INTEGER     ,
	Endereço             TEXT     ,
	Email                TEXT     ,
	"Resumo breve"       TEXT     ,
	Habilidades          TEXT     ,
	Personalidade        TEXT     ,
	ID_Pessoa            INTEGER NOT NULL  PRIMARY KEY  ,
	"Sua foto"           INTEGER     ,
	FOREIGN KEY ( ID_Pessoa ) REFERENCES INSTANCE.Formação( ID_formação )  ,
	FOREIGN KEY ( ID_Pessoa ) REFERENCES INSTANCE.Exepriencia( ID_Experiencia )  ,
	FOREIGN KEY ( ID_Pessoa ) REFERENCES INSTANCE.Realizaçoes( ID_Realizaçoes )  
 );
