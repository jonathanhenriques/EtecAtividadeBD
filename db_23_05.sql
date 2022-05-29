create database db_livraria;
use db_livraria;

create table tb_cliente(
codigo_cliente int auto_increment,
cpf_cnpj varchar(14) not null,
celular varchar(11),
telefone varchar(10),
tipo varchar(45),
primary key (codigo_cliente)
);

create table editora(
codigo_editora int auto_increment,
endereco varchar(45),
telefone int (10),
responsavel varchar(30),
primary key (codigo_editora)
);

create table livro(
isbn int,
qtde int,
assunto varchar(20) not null,
autor varchar(20) not null,
codigo_editora int,
primary key (isbn)
);

create table compra(
codigo_cliente int,
codigo_ibsn int,
valor int
);


alter table livro add foreign key (codigo_editora) references editora(codigo_editora);

alter table compra add foreign key (codigo_cliente) references tb_cliente(codigo_cliente);

alter table compra add foreign key (codigo_ibsn) references livro(isbn);

alter table tb_cliente change column codigo_cliente codigo_cliente int auto_increment;

insert into tb_cliente(codigo_cliente,tipo,cpf_cnpj,celular,telefone) values(1,"06183993050","fisica","11987641345"," 1145606437");

insert into tb_cliente(codigo_cliente,tipo,cpf_cnpj,celular,telefone) values(2,"015.550.080-54","fisica","11987897484"," 1145673421");

insert into tb_cliente(codigo_cliente,tipo,cpf_cnpj,celular,telefone) values(3,"65013675000110","cnpj","11987898747"," 1145670987");

insert into editora(endereco,telefone,responsavel) values ("Rua Macro 151",1143564456," Marco Varella");

insert into editora(endereco,telefone,responsavel) values ("Rua Monge 3431",1154567589," Júlio Sacarema");

insert into livro (isbn,qtde,assunto,autor,codigo_editora) values (9788533304005,10,"FINANÇAS"," DÉCIO BASIN",1);

insert into livro (isbn,qtde,assunto,autor,codigo_editora) values (9874445567899,15,"EDUCAÇÃO"," PAULO FREIRE",2);

insert into livro (isbn,qtde,assunto,autor,codigo_editora) values (9874747590608,16,"INFORMATICA","  ANDREW TANENBAUM",2);

insert into livro (isbn,qtde,assunto,autor,codigo_editora) values (9875779848736,17,"POLITICA","MARIO SERGIO CORTELLA",2);

insert into compra (codigo_cliente,codigo_editora, valor) values (1,2,30);

insert into compra (codigo_cliente,codigo_editora, valor) values (2,2,60);

select * from tb_cliente;

select * from editora;

select * from livro;