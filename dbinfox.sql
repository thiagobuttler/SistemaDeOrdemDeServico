-- comentários
-- a linha abaixo cria um banco de dados
CREATE DATABASE dbinfox;

-- a linha abaixo escolhe o banco de dados a ser utilizado
USE dbinfox;

-- o bloco de instruções abaixo cria uma tabela
create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);

-- o comando abaixo descreve a tabela
describe tbusuarios;

-- a linha abaixo insere dados na tabela (CRUD)
-- create = insert
insert into tbusuarios(iduser, usuario, fone, login, senha)
values (1, 'Thiago Buttler', '9999-9999', 'thiagobuttler', '123456');

-- a linha abaixo exibe os dados da tabela (RUD)
-- read = select
select * from tbusuarios;

insert into tbusuarios(iduser, usuario, fone, login, senha)
values (2, 'ADM Thiago Buttler', '9999-9999', 'adm', 'admin123456');

insert into tbusuarios(iduser, usuario, fone, login, senha)
values (3, 'TESTE Thiago Buttler', '9999-9999', 'teste', 'teste123456');

-- a linha abaixo modifica dados na tabela (ud)
-- update = update
UPDATE tbusuarios SET fone='9999-8888' WHERE iduser=2;

-- a linha abaixo apaga um registro da tabela (D)
-- delete = delete
delete from tbusuarios where iduser=3;

select * from tbusuarios;