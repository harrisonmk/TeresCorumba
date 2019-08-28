create database lojajsp;



use lojajsp;

/* cria uma tabela de produtos */
create table produtos (

id_produto int primary key auto_increment,
nome varchar(255) not null,
img_produto varchar(255) not null,
id_categoria int not null,
preco decimal(6,3) not null,
estoque int not null

)Engine = InnoDB;

/*cria um procedimento para fazer o select dos produtos */
DELIMITER //
  create procedure selectProdutos()
   begin
     select * from produtos where nome like 'e%' and estoque =200;
     end //
DELIMITER     
 
 
 DELIMITER //
  create procedure selectgarrafas()
   begin
     select * from produtos where nome like 'G%';
     end //
DELIMITER   

DELIMITER //
  create procedure selectbomba()
   begin
     select * from produtos where nome like 'b%';
     end //
DELIMITER   

DELIMITER //
  create procedure selectouropy()
   begin
     select * from produtos where nome like 'e%' and estoque =100;
     end //
DELIMITER   

DELIMITER //
  create procedure selectkarina()
   begin
     select * from produtos where nome like 'e%' and estoque =102;
     end //
DELIMITER  

DELIMITER //
  create procedure select81()
   begin
     select * from produtos where nome like 'e%' and estoque =103;
     end //
DELIMITER  

DELIMITER //
  create procedure selectkurupi()
   begin
     select * from produtos where nome like 'e%' and estoque =104;
     end //
DELIMITER  

DELIMITER //
  create procedure selectcapimar()
   begin
     select * from produtos where nome like 'e%' and estoque =105;
     end //
DELIMITER  

DELIMITER //
  create procedure selectcurupira()
   begin
     select * from produtos where nome like 'e%' and estoque =106;
     end //
DELIMITER  


DELIMITER //
  create procedure selectcampanario()
   begin
     select * from produtos where nome like 'e%' and estoque =107;
     end //
DELIMITER  
 
 /* procedimento para verificar se o id do produto passado vai estar no banco de dados */
DELIMITER //
 create procedure selectProduto(IN _id_produto int)
      begin
      select * from produtos where id_produto = _id_produto;
      end //
DELIMITER ;
 

 
 /*insercoes */
 
insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('Erva 81 Extra Forte Menta e Boldo','images/shop/erva1.jpg',2,11.00,200);
insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('Erva Crioula boldo com menta','images/shop/erva2.jpg',2,14.50,200);
insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('Erva curupira boldo com menta','images/shop/erva4.jpg',2,13.50,200);
insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('Erva Crioula boldo com menta','images/shop/erva5.jpg',2,15.50,200);
insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('Erva UHDE abacaxi','images/shop/erva6.jpg',2,17.50,200);
insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('Erva UHDE Menta Black','images/shop/erva7.jpg',2,16.50,200);
 
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('Erva Curupira Extra forte menta e limao','images/shop/erva4.jpg',2,14.50,200);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('Erva Mate Kurupi menta e boldo','images/shop/erva5.jpg',2,15.00,150);
 
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('Garrafa Termica para terere','images/shop/garrafa1.jpeg',3,150.00,150);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('Garrafa Termica para terere campanario','images/shop/garrafa2.jpg',3,150.00,150);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('Garrafa Termica ','images/shop/garrafa3.jpeg',3,120.00,150);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('Garrafa Termica para terere','images/shop/garrafa4.jpg',3,130.00,150);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('Garrafa Termica para terere','images/shop/garrafa5.jpg',3,110.00,150);
 
 
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('bomba de ferro para terere','images/shop/bomba1.jpeg',4,4.50,150);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('bomba N°2','images/shop/bomba2.jpg',4,4.99,150);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('bomba de terere tradicional','images/shop/bomba3.jpg',4,4.00,150);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('bomba de terere inox com mola','images/shop/bomba4.jpg',4,5.00,150);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('bomba de terere alpaca','images/shop/bomba5.jpg',4,6.00,150);
 
 
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva ouropy sabor energetico','images/shop/ouro1.jpg',2,16.55,100);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva ouropy sabor ice','images/shop/ouro2.jpg',2,16.55,100);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva ouropy saborlimao menta e hortela','images/shop/ouro3.jpg',2,15.55,100);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva ouropy sabor boldo menta e hortela','images/shop/ouro4.jpg',2,14.55,100);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva ouropy sabor menta white','images/shop/ouro5.jpg',2,17.55,100);
 
 
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva Karina sabor menta e hortela','images/shop/ka1.jpg',2,17.40,102);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva Karina sabor cereja ice','images/shop/ka2.jpg',2,16.55,1002);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva Karina sabortuti frutti','images/shop/ka3.jpg',2,16.55,102);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva Karina sabor menta e boldo','images/shop/ka4.jpg',2,15.25,102);
 
 
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva 81 sabor acai e guarana','images/shop/oito1.jpg',2,14.50,103);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva 81 sabor pessego','images/shop/oito2.jpg',2,15.50,103);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva 81 sabor natural','images/shop/oito3.jpg',2,16.50,103);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva 81 fitness','images/shop/oito4.jpg',2,17.50,103);
 
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva kurupi sabor menta e boldo','images/shop/kuru1.jpg',2,10.50,104);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva kurupi sabor menta e limao','images/shop/kuru2.jpg',2,11.50,104);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva kurupi sabor katuava','images/shop/kuru3.jpg',2,12.50,104);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva kurupi sabor laranja','images/shop/kuru4.jpg',2,13.50,104);
 
 
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva capimar sabor natural','images/shop/capi1.jpg',2,15.55,105);
 
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva curupira sabor extra forte menta e boldo ','images/shop/curu1.jpg',2,10.55,106);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva curupira sabor menta e boldo','images/shop/curu1.jpg',2,14.55,106);
 
 
 
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva campanario sabor menta e boldo','images/shop/cam1.jpg',2,11.55,107);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva campanario sabor menta e boldo','images/shop/cam2.jpg',2,12.55,107);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva campanario sabor menta e boldo','images/shop/cam3.jpg',2,13.55,107);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva campanario sabor menta e boldo','images/shop/cam4.jpg',2,14.55,107);
 insert into produtos (nome,img_produto,id_categoria,preco,estoque) values ('erva campanario sabor menta e boldo','images/shop/cam5.jpg',2,15.55,107);
 
 
 call selectProdutos();
 
 call selectgarrafas();
 
  call selectouropy();
  
  call selectkarina();
  
  call select81();
  
  call selectkurupi();
  
  call selectcapimar();
  
  call selectcurupira();
  
  call selectcampanario();
  
  
 
 call selectProduto(8);
 


 
