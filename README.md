# Análise das vendas 

### **1. Objetivo:**
Esse projeto tem como objetivo identificar e analisar quantitativa e qualitativamente as preferências dos consumidores da empresa. Diante disso, foram realizados os processos de extração, limpeza e visualização dos dados para, assim, facilitar a formulação de insights que auxiliem a otimização e proposição de estratégias mais adequadas a realidade atual do negócio. A base de dados utilizada foi obtida por meio do Kaggle, o link se encontra a seguir:  https://www.kaggle.com/datasets/nextmillionaire/pizza-sales-dataset; o arquivo xlsl está disponível nesse repositório. 

Observação: A versão em inglês do projeto se encontra ao final do tópico 5 (Análise SWOT).

### **2. KPIs:**

- *Receita Total:* a soma do valor arrecadado com todos os pedidos atendidos;
- *Valor Médio do Pedido:* o valor médio gasto por pedido, que foi calculado por meio da divisão da Receita Total pelo Número Total de Pedidos; 
- *Total de Pizzas Vendidas:* soma de todas as pizzas vendidas em todos os pedidos atendidos;
- *Número Total de Pedidos:* soma de todos os pedidos atendidos;
- *Média de Pizzas por Pedido:* quantidade média de pizzas encomendadas por pedido, foi calculado por meio da divisão do Total de Pizzas Vendidas pelo Número Total de Pedidos; 

### **3. Questões analisadas:**

- *Tendência Diária do Total de Pedidos:* identificar padrões e flutuações na quantidade de pedidos diários;
- *Tendência Mensal do Total de Pedidos:* tem como objetivo identificar padrões e flutuações na quantidade de pedidos mensáis; 
- *Porcentagem de Vendas pela Categoria de Pizza:* entender as prefêrencias por cada categoria de pizza e a sua respectiva participação na receita total;
- *Porcentagem de Vendas pelo Tamanho da Pizza:* entender as prefêrencias por cada tamanho de pizza e a sua respectiva participação na receita total;
- *Total de Pizzas Vendidas por Categoria:* comparar to total de vendas com as categorias;
- *5 Produtos Mais Vendidos por Receita, Quantidade e Pedidos:* identificar as opções mais populares entre os consumidores;
- *5 Produtos Menos Vendidos por Receita, Quantidade e Pedidos:* identificar as opções menos populares entre os consumidores.

### **4. Descrição dos Dados:**
A base de dados é composta por 12 colunas e 48.621 linhas, é importante frisar que as informações estão em inglês e, para facilitar o entendimento, as descrições de cada coluna serão realizadas abaixo:

- *pizza_id:* número identificador da pizza, é único e não se repete;
- *order_id:* número identificador do pedido é único para cada pedido realizado, porém pode se repetir quando diferentes pizzas são solicitadas dentro do mesmo pedido; 
- *pizza_name_id:* combinação do nome e do tamanho da pizza pedida; 
- *quantity:* quantidade de pizzas pedidas, considerando o "pizza_name_id";
- *order_date:* data do pedido, segue o formato dd/mm/aaaa;
- *order_time:* hora do pedido;
- *unit_price:* preço por unidade pedida;
- *total_price:* preço total do pedido;
- *pizza_size:* tamanho da pizza, as opções ofertadas pela pizzaria são: Small (Pequena), Medium (Média) e Large (Grande);
- *pizza_category:* categoria da pizza, as opções ofertadas pela pizzaria são: Classic (Clássica), Veggie (Vegetariana), Chicken (Frango) e Supreme (Suprema);
- *pizza_ingredients:* ingredientes da pizza; 
- *pizza_name:* nome da pizza.


