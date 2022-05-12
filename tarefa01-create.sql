
CREATE TABLE funcionario (
	codigo SERIAL PRIMARY KEY,
	nome VARCHAR(50),
	sexo CHAR(1),
	dataNasc DATE,
	salario DECIMAL(10,2),
	codDepto INT,
);

CREATE TABLE departamento (
	codigo SERIAL PRIMARY KEY,
	descricao VARCHAR(100),
	codGerente INT REFERENCES funcionario(codigo),
);

CREATE TABLE projeto (
	codigo SERIAL PRIMARY KEY,
	nome VARCHAR(50),
	descricao VARCHAR(250),
	dataInicio DATE, 
	dataFim DATE,
	codResponsavel INT REFERENCES funcionario(codigo), 
	codDepto INT REFERENCES departamento(codigo)
);

CREATE TABLE atividade (
	codigo SERIAL PRIMARY KEY,
	descricao VARCHAR(250),
	codResponsavel INT,
	dataInicio DATE, 
	dataFim DATE,
	codResponsavel INT REFERENCES funcionario(codigo)
  );

CREATE TABLE atividade_projeto (
	cod_atividade INT REFERENCES atividade(codigo),
	cod_projeto INT REFERENCES projeto(codigo)
);
