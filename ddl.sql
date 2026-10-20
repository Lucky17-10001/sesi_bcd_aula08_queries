--atividade 1--

select * from produto order by nome;

--atividade 2--

select * from produto order by id desc limit 5;

--atividade 3--

select id, quantidade, valor_unitario from pedido order by valor_unitario desc limit 10;

--atividade 4--

select * from pedido order by id desc limit 10;

--atividade 5--

select p.id, c.nome, p.quantidade, p.valor_unitario from pedido p join cliente c on c.id = p.id_cliente;

--atividade 6--

select p.id, pr.nome, p.quantidade, p.valor_unitario from pedido p join produto pr on pr.id = p.id_produto;

--atividade 7--

select p.id, c.nome, pr.nome, p.quantidade, p.valor_unitario, p.subtotal
from pedido p join produto pr on pr.id = p.id_produto
join cliente c on c.id = p.id_cliente;

--atividade 8--

select c.nome, pr.nome, p.subtotal from pedido p join produto pr on pr.id = p.id_produto
join cliente c on c.id = p.id_cliente order by subtotal desc limit 5;

--atividade 9--

select count(*) from cliente;

--atividade 10--

select count(*) from produto;

--atividade 11--

select c.nome, count(p.id) from cliente c join pedido p on c.id = p.id_cliente group by c.id, c.nome;

--atividade 12--

select pr.nome, count(p.id) from produto pr join pedido p on pr.id = p.id_produto group by pr.nome order by pr.nome;

--atividade 13--

select sum(p.subtotal) as total from pedido p;

--atividade 14--

select avg(p.quantidade) as media from pedido p;

--atividade 15--

select pr.nome, sum(p.subtotal) as total from produto pr join pedido p on pr.id = p.id_produto group by pr.nome order by subtotal desc;