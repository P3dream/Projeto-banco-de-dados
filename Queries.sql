use ecommerce;
select * from clients c, orders o where c.idClient = idOrderClient;

-- Quantos pedidos foram feitos por cada cliente?

select c.idClient, Fname, count(*) as number_of_orders from clients c
	inner join orders o ON c.idClient = o.idOrderClient
    group by idClient;
    
-- recuperação de pedido com produto associado

select * from clients c
	inner join orders o ON c.idClient = o.idOrderClient
    inner join productOrder p ON c.idClient = o.idOrderClient
    group by idClient;
    
-- Algum vendedor também é fornecedor?

select a.SocialName, a.CNPJ, a.contact, count(*) as number_of_sellers_that_are_suppliers from seller a 
inner join supplier b ON a.CNPJ = b.CNPJ; 

-- Relação de produtos fornecedores e estoques;

select PName as Product_name, category, SocialName as Supplier_name, storageLocation, b.quantity from product a 
inner join productSupplier b ON a.idProduct = b.idPsproduct
inner join supplier c ON b.idPSsupplier = c.idSupplier
inner join storageLocation d ON d.idLProduct = a.idProduct
inner join productStorage e on d.idLStorage = e.idProdStorage;

-- Relação de nomes dos fornecedores e nomes dos produtos;
select * from clients c, orders o where c.idClient = idOrderClient;