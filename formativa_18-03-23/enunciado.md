<b>Aluno: Kauã Amaral Moreno</b> <br>
<b>Senai Mogi, Curso Téc. de Desenvolvimento de Sistemas – Turma M2P – Prof. Ismael A. Faria </b>

Conteúdo abordado: SGBD <br>
Tópico: DER

##
Você é técnico em desenvolvimento de sistemas na empresa XYZ. Seu coordenador pediu que fosse até a loja Eletrônicos Carvalhos e analisasse o processo deles para desenvolver o SGBD.
Após retornar, você logo explicou como funcionava a loja.
Primeiramente o cliente se cadastra: nome, cpf, data de nascimento, telefone e email. A partir disso ele é atendido por um dos 5 vendedores da loja.
A loja dispões de uma grande variedade de produtos e alguns deles de fornecedores diferentes; um acordo realizado entre pequenos comerciantes da região. No entanto, é a Eletrônico Carvalhos que administra todos eles.
O cliente seleciona o produto, o vendedor verifica se há no estoque e realiza a venda e imprime a nota.

A nota vem com as seguintes informações:
*	Nome do cliente;
*	Nome do vendedor;
*	Nome do produto;
*	Preço do produto;
*	Nome do fornecedor;
*	Data da compra.

Seu coordenador ficou muito contente com os detalhes dados por você e rapidamente pediu que declarasse todas as entidades; forte e fracas.
Em pouco tempo você selecionou e as entregou, ele mais do que ligeiro, fez o último pedido:
Desenvolva o DER e não esqueça da cardinalidade nos relacionamentos. 

## 
## Classificação das entidades
### Fortes:
*	Cliente
*	Vendedor
*	Fornecedor

### Fracas:
*	Estoque (Depende do fornecedor)
*	Produto (Depende do fornecedor e do estoque)
*	Venda 
*	Pedido

<br>

## Diagrama Entidade Relacionamento - Resolução

![modelo](https://user-images.githubusercontent.com/119445003/225322483-0466ca7f-125b-4a47-bf5d-af34d63da797.png)

<br>

> O diagrama foi feito a partir do software brModelo
