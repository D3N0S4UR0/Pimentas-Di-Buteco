drop table Produtos

create table Produtos
(codProdutos int not null primary key,
imagemProduto varchar(60) not null,
nomeProduto varchar(40) not null,
descricaoProduto varchar(100) not null,
sobreProduto varchar(100) not null)

insert into Produtos values(1,'ArribaSaia.jpg','Arriba Saia','Ardência 10 - Pimenta Arriba Saia','Link')
insert into Produtos values(2,'AcaiPicante.jpg','Acai Picante','Ardência 4 - Pimentas vermelhas e Poupa da Açaí','Link')
insert into Produtos values(3,'Caipira.jpg','Caipira','Ardência 5 - Pimentas Vermelhas','Link')
insert into Produtos values(4,'Habanero.jpg','Habanero','Ardência 9 - Molho Mexicano','Link')
insert into Produtos values(5,'BaianaCabraDaPeste.jpg','Baiana','Ardência 20 - Pimenta Trinidad Scorpion e Condimentos Especiais','Link')
insert into Produtos values(6,'PestoCaipira.jpg','Pesto Caipira','Ardência 0 - Molho para Salada','Link')
insert into Produtos values(7,'GotaMalagueta.jpg','Gota Malagueta','Ardência 7 - Creme de Malagueta','Link')
insert into Produtos values(8,'Tailandes-Sriracha.jpg','Sriracha','Ardência 4 - Pimentas Vermelhas com toque Agridoce','Link')
insert into Produtos values(9,'ButecoTradicional.jpg','Tradicional','Ardência 5 - Pimentas Vermelhas','Link')
insert into Produtos values(10,'CheiroVerde.jpg','Cheiro Verde','Ardência 4 - Pimenta Bode Verde e Cheiro Verde','Link')
insert into Produtos values(11,'BiquinhoDefumado.jpg','Biquinho Defumado','Ardência 0 - Pimenta Biquinho','Link')
insert into Produtos values(12,'DedoDeMocaCalabresa.jpg','Dedo de Moca Calabresa','Ardência 8 - Pimenta Dedo de Moça Desidratada','Link')
insert into Produtos values(13,'TrinidadScorpion-CabraDaPeste.jpg','Hot Pepper','Ardência 15 - Pimenta Trinidad Scorpion','Link')
insert into Produtos values(14,'DedoDeMocaCalabresa.jpg','Dedo De Moça Calabresa','Ardência 8 - Pimenta Dedo de Moça Desidratada','Link')




select * from Produtos