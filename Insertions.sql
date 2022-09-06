use ecommerce;

show tables;
-- idClient, Fname, Minit, Lname, CPF, Address

insert into Clients(Fname,Minit,Lname,CPF,Address)
	values('Maria','M','Silva',123456789,'rua silva de prata 29, Carangola - Cidade das flores'),
		  ('Matheus','O','Pimentel',987654321,'rua alemeda 289, Centro - Cidade das flores'),
          ('Ricardo','F','Silva',45678913,'rua laranjeiras 861, Centro - Cidade das flores'),
          ('Julia','S','França',789123456,'rua laranjeiras 234, Centro - Cidade das flores'),
          ('Roberta','G','Assis',98745631,'avenida koeller 19, Centro - Cidade das flores'),
          ('Isabela','M','Cruz',654789123,'rua alemeda das flores 28, Centro - Cidade das flores');

desc Clients;

-- idProduct, Pname, classification_kids boolean, category('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis'),avaliação,size
insert into product(Pname,classification_kids,category,avaliation,size)values
	('Fone de ouvido',false,'Eletrônico','4',null),
    ('Barbie Elsa',true,'Brinquedos', '3',null),
    ('Body carters',true,'Vestimenta','5',null),
    ('Microfone vedo - Youtuber', False, 'Eletrônico','4',null),
    ('Sofá retrátil', False, 'Móveis', '3','3x57x80'),
    ('Farinha de arroz', False, 'Alimentos','2',null),
    ('Fire Stick Amazon',False,'Eletrônico','3',null);
    
select * from clients;
select * from product;

-- idOrder, idOrderClient, orderStatus, orderDescription, sendValue, paymentCash

insert into orders(idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) values
	(1,default,'compra via aplicativo',null,1),
    (2,default,'compra via aplicativo',50,0),
    (3,'Confirmado',null,null,1),
    (4,default,'compra via web site',150,0);
-- idPOproduct, idPOorder,  poQuantity, poStatus
select * from orders;

insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values
	(1,1,2,null),
    (2,2,1,null),
    (3,3,1,null);

-- storage location, quantity
insert into productStorage(storageLocation,quantity) values
	('Rio de Janeiro',1000),
    ('Rio de Janeiro',500),
    ('São Paulo',10),
    ('São Paulo',100),
    ('São Paulo',10),
    ('Brasília',60);
-- idLproduct, idLstorage, location
insert into storageLocation(idLproduct,idLstorage,location) values
	(1,2,'RJ'),
    (2,6,'GO');
-- idSupplier, SocialName, CNPJ, contact
insert into supplier (SocialName,CNPJ,contact) values
	('Almeida e filhos',123456789123456,'21985474'),
    ('Eletrônicos Silva',854519649143457,'21985484'),
    ('Eletrônicos Valma', 934567893934239,'21975474');
select * from supplier;
-- idPsSupplier, idPsProduct, quantity
insert into productSupplier (idPsSupplier, idPsProduct, quantity) values
	(1,1,500),
    (1,2,400),
    (2,4,633),
    (3,3,5),
    (2,5,10);
-- idSeller, SocialName, AbstName, CNPJ, CPF, location, contact 
insert into seller(SocialName, AbstName, CNPJ, CPF,location, contact) values
	('Tech eletronics',null,12345679129,null,'Rio de Janeiro', 219946287),
    ('Botique Durgas',null,12341234,123456783,'Rio de Janeiro', 2129567895),
    ('Kids World', null,427326236712,null,'São Paulo',1293112);

insert into productSeller (idPSeller, idPproduct, prodQuantity) values
	(1,6,80),
    (2,7,10);
