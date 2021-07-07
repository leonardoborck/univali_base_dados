CREATE TABLE condominio (
	id serial primary key,
	nome varchar(70),
	cnpj varchar(19),
	rua varchar(200),
    numero int,
    bairro varchar(50),
    nome_sindico varchar(100),
	nome_sub_sindico varchar(100)
);

	
CREATE TABLE condomino (
	id serial primary key,
    id_condominio serial,
	id_salao_festas serial,
	nome varchar (70),
	cpf varchar(15),
	email varchar(50),
	senha varchar(4),
	celular varchar(11),
	telefone varchar(11),
	numero_bloco numeric(2),
	numero_apartamento varchar(3)
);

CREATE TABLE funcao (
	id serial primary key,
    nome varchar(50)
);

CREATE TABLE funcionario (
	id serial primary key,
	id_condominio serial,
    id_funcao serial,
	nome varchar(70),
	cpf varchar(15),
	turno varchar(15),
    salario decimal(7,2),
    rua varchar(200),
    numero int,
    bairro varchar(50),
    CONSTRAINT fk_condominio_funcionario FOREIGN KEY (id_condominio) REFERENCES condominio(id),
    CONSTRAINT fk_funcao_funcionario FOREIGN KEY (id_funcao) REFERENCES funcao(id)
);

CREATE TABLE achados_e_perdidos (
	id serial primary key,
	id_condominio serial,
	id_funcionario serial,
	descricao varchar(200),
    CONSTRAINT fk_condominio_achados_perdidos FOREIGN KEY (id_condominio) REFERENCES condominio(id),
    CONSTRAINT fk_funcionario_achados_perdidos FOREIGN KEY (id_funcionario) REFERENCES funcionario(id)
);


CREATE TABLE ocorrencia (
	id serial primary key,
	id_condominio serial,
	id_condomino serial,
	categoria varchar(30),
	descricao varchar(100),
    CONSTRAINT fk_condominio_ocorrencia FOREIGN KEY (id_condominio) REFERENCES condominio(id),
    CONSTRAINT fk_condomino_ocorrencia FOREIGN KEY (id_condomino) REFERENCES condomino(id)
);

CREATE TABLE salao_festas(
	id serial primary key,
	id_condominio serial,
    CONSTRAINT fk_condominio_salao_festas FOREIGN KEY (id_condominio) REFERENCES condominio(id)
);

CREATE TABLE reserva_salao(
	id serial primary key,
	id_condomino serial,
	id_salao_festas serial,
	data timestamp,
    CONSTRAINT fk_reserva_salao_condomino FOREIGN KEY (id_condomino) REFERENCES condomino(id),
    CONSTRAINT fk_reserva_salao_salao_festas FOREIGN KEY (id_salao_festas) REFERENCES salao_festas(id)
);

	alter table condomino add CONSTRAINT fk_condominio_condomino FOREIGN KEY (id_condominio) REFERENCES condominio(id);
    alter table condomino add CONSTRAINT fk_salao_festas_condomino FOREIGN KEY (id_salao_festas) REFERENCES salao_festas(id);
    
UPDATE condomino SET nome = "Ronaldo" WHERE id = 3;    
UPDATE condomino SET nome = "Pelé" WHERE id = 1;    
UPDATE condomino SET nome = "Messi" WHERE id = 2;    
UPDATE condomino SET nome = "Cristiano" WHERE id = 4;    
UPDATE condomino SET nome = "Neymar" WHERE id = 5;

DELETE FROM condomino WHERE id = 5;
DELETE FROM condomino WHERE id = 4; 
DELETE FROM condomino WHERE id = 3;
DELETE FROM condomino WHERE id = 2;
DELETE FROM condomino WHERE id = 1; 

SELECT * FROM ocorrencia WHERE id = 5;
SELECT * FROM achados_e_perdidos WHERE id = 4;
SELECT * FROM funcionario WHERE id = 3;
SELECT * FROM condomino WHERE id = 2;
SELECT * FROM condominio WHERE id = 1;

SELECT * FROM funcionario f INNER JOIN funcao fu ON fu.id = f.id_funcao;
SELECT * FROM condomino c INNER JOIN condominio co ON c.id_condominio = co.id;
SELECT * FROM achados_e_perdidos ap INNER JOIN funcionario f ON f.id = ap.id_funcionario;
SELECT * FROM condominio cond INNER JOIN funcionario f ON cond.id = f.id_condominio;
SELECT * FROM ocorrencia o INNER JOIN condomino co ON co.id = o.id_condomino;
