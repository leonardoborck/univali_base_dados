insert into condominio (nome,numero,rua,bairro,cnpj, nome_sindico, nome_sub_sindico) values ( 'Condominio das Flores', 101, 'Rua Das Acácias', 'Centro', '101.202.303/4545-55', 'Paulo', 'Juca' );
insert into condominio (nome,numero,rua,bairro,cnpj, nome_sindico, nome_sub_sindico) values ( 'Condominio das Frutas', 251, 'Rua Das Flores', 'Areias', '284.350.857/4545-55', 'Fabio', 'Thiago' );
insert into salao_festas (id_condominio) values (1);
insert into salao_festas (id_condominio) values (2);
insert into salao_festas (id_condominio) values (3);
insert into condomino (nome,id_condominio,id_salao_festas, celular, cpf, email, senha, numero_apartamento, numero_bloco, telefone) values ('Leonardo', 1, 1,'88994466','187.789.445-20','leo@gmail.com','1234','101','2','87879865');
insert into condomino (nome,id_condominio,id_salao_festas, celular, cpf, email, senha, numero_apartamento, numero_bloco, telefone) values ('Bruno', 2, 1,'33552288','187.222.741-20','bruno@gmail.com','2345','202','1','44775147');
insert into funcao values (1,'Zelador');
insert into funcionario values (1,1,1,'Oswaldo','187.987.989-25','Noturno',2000.50,'Rua Lest Europeu', '157','Centro');
insert into achados_e_perdidos values (1,1,1,'Celular Achado');