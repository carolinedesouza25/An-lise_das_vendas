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
A base de dados é composta por 12 colunas e 48.620 linhas, é importante frisar que as informações estão em inglês e, para facilitar o entendimento, as descrições de cada coluna serão realizadas abaixo:

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

### **5. Análise dos dados:**


#### **5.1 SQL:**

O banco de dados foi pré-processado em SQL para ajustar o tipo das colunas total_price e unit_price, pois, apesar de estarem definidas como _float_, não eram tratadas corretamente como valores decimais; por isso foi necessária a conversão desses campos e a inclusão de duas colunas adicionais para armazenar as versões devidamente ajustadas. Em seguida, executaram-se queries exploratórias para mapear padrões de vendas, calcular métricas iniciais e validar a consistência geral do conjunto de dados, o que permitiu compreender melhor o volume de pedidos, o comportamento dos preços e possíveis discrepâncias. Com base nessa investigação, definiram-se as principais métricas a serem utilizadas no dashboard — como receita total, ticket médio e quantidade de itens vendidos — além das dimensões temporais e categóricas que dariam suporte às visualizações. Assim, apenas os dados já tipados e enriquecidos foram carregados no Power BI.


Nas imagens 1 e 2, eu converti pizza_id e order_id de smallint para int para lidar com um volume maior de registros conforme o banco cresce, evitando ter que alterar o tipo no futuro, visto que smallint tem o alcance que vai de –32.768 a 32.767, então converti para int, que suporta de –2.147.483.648 a 2.147.483.647. Também mudei pizza_name_id, pizza_size, pizza_category e pizza_name de nvarchar(50) para varchar(50) porque não usamos caracteres especiais, o que reduz o uso de espaço e deixa as consultas mais rápidas. Por fim, alterei pizza_ingredients de nvarchar(100) para varchar(200) para permitir descrições mais completas dos ingredientes e tornar mais eficiente a indexação e busca nesses textos.

![Captura de tela 2025-03-29 135638](https://github.com/user-attachments/assets/44defab7-a408-4239-983e-713a9aaccc83)

Imagem 1 - geral

![Captura de tela 2025-03-29 141222](https://github.com/user-attachments/assets/d7c2fc7d-de1d-4393-b7a1-cc9e6ed80cad)

Imagem 2 - geral

![Captura de tela 2025-04-09 092803](https://github.com/user-attachments/assets/cf6d572b-3f09-4baa-9538-2e0c87df9e7e)

Imagem 3 - geral

![Captura de tela 2025-04-09 083602](https://github.com/user-attachments/assets/12b6bdd5-3506-4932-b5da-95fd2005c4e5)

Imagem 4 - geral

![Captura de tela 2025-04-09 085131](https://github.com/user-attachments/assets/8421e688-ce92-41a8-95c5-19460b37998a)

Imagem 5 - geral

![Captura de tela 2025-04-09 090911](https://github.com/user-attachments/assets/93d547fd-a564-4f0c-a7cc-255d175e86e0)

Imagem 6 - geral

![Captura de tela 2025-04-09 092545](https://github.com/user-attachments/assets/e26eecd4-3218-4570-8788-204b2f182480)

Imagem 7 -geral 

![Captura de tela 2025-04-09 093012](https://github.com/user-attachments/assets/d1e216d1-2220-4739-9138-47f994f85027)

Imagem 8 - geral

![Captura de tela 2025-04-09 093257](https://github.com/user-attachments/assets/f07dc759-da74-4f16-9dd6-a2bd78e91a05)

Imagem 9 - geral

![Captura de tela 2025-04-09 094841](https://github.com/user-attachments/assets/2996f12e-28e0-454b-8a1a-5c3d83d19491)

Imagem 10 - geral 

![Captura de tela 2025-04-09 174820](https://github.com/user-attachments/assets/d7b140ba-3533-43b9-b783-61f5bc4f148c)

Imagem 11 - Tendência Diária do Total de Pedidos

![Captura de tela 2025-04-09 175921](https://github.com/user-attachments/assets/da27390d-8527-463d-9712-76c32cd24fb5)

Imagem 12 - Tendência Mensal do Total de Pedidos

![Captura de tela 2025-04-09 180323](https://github.com/user-attachments/assets/d6bdfae1-8b38-4756-bcff-ed23157811b9)

Imagem 13 - Tendência Mensal do Total de Pedidos

![Captura de tela 2025-04-09 181730](https://github.com/user-attachments/assets/bcc6dc87-9712-49c6-a3d9-4db604292261)

Imagem 14 - Porcentagem de Vendas pela Categoria de Pizza

![Captura de tela 2025-04-09 182246](https://github.com/user-attachments/assets/57fc98f1-fdb9-4d1d-8f44-770deac46783) 

Imagem 15 - Porcentagem de Vendas pela Categoria de Pizza

![Captura de tela 2025-04-09 182225](https://github.com/user-attachments/assets/c0a502c1-64ff-43da-b68d-402f6e884f33)

Imagem 16 - Porcentagem de Vendas pela Categoria de Pizza

![Captura de tela 2025-04-12 115832](https://github.com/user-attachments/assets/f7b1c564-2eb3-4211-8e80-7955347443b3)

Imagem 17 - Porcentagem de Vendas pela Categoria de Pizza

![Captura de tela 2025-04-09 093650](https://github.com/user-attachments/assets/ebd2a8dd-40eb-4a8e-88fa-d45e32a80dba)

Imagem 18 - Top 5

![Captura de tela 2025-04-12 121128](https://github.com/user-attachments/assets/6de4fad9-9f95-49b4-be12-bf47586d52cc)

Imagem 19 - Top 5

![Captura de tela 2025-04-12 130935](https://github.com/user-attachments/assets/6095eb6c-3027-4284-9656-ffa11ecbc850)

Imagem 20 - Top 5 

![Captura de tela 2025-04-12 131425](https://github.com/user-attachments/assets/db64fe14-b33f-4b9d-809a-105c9d2a68d5)

Imagem 21 - Top 5 

![Captura de tela 2025-04-13 162738](https://github.com/user-attachments/assets/94c8b0e1-807d-402e-af4a-5e079d0ad3d1)

Imagem 22 - top 5

![Captura de tela 2025-04-13 162717](https://github.com/user-attachments/assets/a546eed9-ba41-4fdb-8c1f-ca5fdc671e53)

Imagem 33 - top 5

![Captura de tela 2025-04-12 145725](https://github.com/user-attachments/assets/fa16b855-c3b1-43b7-9ab6-e7b7ee7bd2f0)

Imagem 31 - top 5

![Captura de tela 2025-04-12 145745](https://github.com/user-attachments/assets/71aac96c-1c18-4146-bb2b-97e584abb7ff)

Imagem 34 - top 5



### BI

![Captura de tela 2025-04-14 024044](https://github.com/user-attachments/assets/79b2fca2-2b3f-4dbc-808a-9681963ea693)

Imagem 35

![Captura de tela 2025-04-14 023916](https://github.com/user-attachments/assets/224e764f-7862-49c9-9163-2e6800ad0cf1)

Imagem 36

![Captura de tela 2025-04-14 023656](https://github.com/user-attachments/assets/3f0a063f-e374-44c6-aef9-66155c495f81)

Imagem 37

![Captura de tela 2025-04-14 023621](https://github.com/user-attachments/assets/91e43f44-7349-49b6-9b01-d003a095bdcf)

Imagem 38

![Captura de tela 2025-04-15 203533](https://github.com/user-attachments/assets/db7bd5e8-a266-4ac3-bd4d-481be16135f7) 
Imagem 39
![Captura de tela 2025-04-15 203429](https://github.com/user-attachments/assets/74116de0-40cc-418c-9a71-0b6df1b1f0bd)
Imagem 40

![Captura de tela 2025-04-15 201229](https://github.com/user-attachments/assets/48f06bf2-6f53-41d6-963d-5f99120beb20)

Imagem 41

![Captura de tela 2025-04-15 194045](https://github.com/user-attachments/assets/19d4d58d-c6ed-4da9-b540-140d48468a7c)
Imagem 42
![Captura de tela 2025-04-15 194034](https://github.com/user-attachments/assets/5a9c7bfd-db94-4976-9427-0dcd7945491d)
Imagem 43

![Captura de tela 2025-04-14 022015](https://github.com/user-attachments/assets/1130e42c-c4fc-4e39-9cfc-473406fe1f2e)

Imagem 44

![Captura de tela 2025-04-24 165244](https://github.com/user-attachments/assets/8620a106-7dfd-442e-8d4c-558a8a7317d9)

Imagem 45

![Captura de tela 2025-04-24 165339](https://github.com/user-attachments/assets/f10bc866-5d6b-42d7-a3b7-c64eb330b1a0)

Imagem 46
