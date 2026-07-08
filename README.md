# Dashboard Comercial com Power BI e PostgreSQL

Este projeto apresenta um dashboard comercial desenvolvido no Power BI a partir de uma base educacional utilizada em curso de SQL da Hitadore/Udemy.

O objetivo foi construir uma análise comercial completa, passando por conexão com banco PostgreSQL, modelagem de dados, criação de tabela calendário, medidas DAX, análise de funil de conversão, desempenho por lojas, produtos e clientes.

Além da análise de dados, o projeto também explora direção visual aplicada a dashboards, utilizando princípios de composição, hierarquia da informação, contraste, imagens de apoio e organização visual.

---

## Objetivo do projeto

Analisar dados comerciais de uma operação fictícia, buscando responder perguntas como:

- Qual foi a evolução da receita ao longo do tempo?
- Quais lojas geraram mais vendas e receita?
- Quais marcas e modelos tiveram melhor desempenho?
- Em qual etapa do funil ocorre maior perda de clientes?
- Quais estados e cidades concentram mais clientes e receita?

---

## Ferramentas utilizadas

- PostgreSQL
- Power BI Desktop
- Power Query
- DAX
- Photoshop
- GitHub

---

## Estrutura do projeto

```
dashboard-comercial-powerbi-postgresql/
│
├── dashboard/
│   └── SQLBI.pbix
│
├── docs/
│   └── apresentacao_dashboard.pdf
│
├── imagens/
│   ├── 1_visao_geral.png
│   ├── 2_lojas.png
│   ├── 3_produtos.png
│   ├── 4_funil.png
│   └── 5_clientes.png
│
└── sql/
    ├── 01-Tratamento-dados-Conversões.sql
    ├── 02-Tratamento-dados-Geral.sql
    ├── 03-Tratamento-dados-Texto.sql
    ├── 04-Tratamento-dados-Datas.sql
    └── 05-Tratamento-dados-Funções.sql
```

Páginas do relatório
1. Visão Geral Comercial

Página executiva com os principais indicadores do projeto:

Total de vendas;
Receita;
Ticket médio;
Taxa de conversão;
Total de visitas;
Evolução da receita mensal;
Top lojas por vendas;
Insight principal sobre crescimento da receita.

2. Lojas

Análise do desempenho das lojas por receita, vendas e ticket médio.

A página permite comparar as lojas com maior faturamento e maior volume de vendas, além de consultar uma tabela detalhada por loja.

3. Produtos

Análise por marca, modelo, ano e valor de venda dos veículos.

A página permite identificar marcas com maior receita, marcas com maior volume de vendas e modelos com maior impacto no resultado comercial.

4. Funil de Conversão

Análise da jornada comercial, considerando as seguintes etapas:

Visitas;
Carrinhos;
Checkout iniciado;
Checkout finalizado;
Vendas.

O principal gargalo identificado está entre a etapa de carrinho e o início do checkout.

5. Clientes

Análise do perfil dos clientes por localização, com foco em estados e cidades que concentram maior volume de clientes, vendas e receita.

A análise indica forte concentração de clientes e receita no estado de São Paulo.

Principais indicadores

O relatório trabalha com os seguintes indicadores principais:

Total de visitas;
Total de vendas;
Receita;
Ticket médio;
Taxa de conversão;
Clientes únicos;
Taxa de carrinho;
Taxa de checkout iniciado;
Taxa de checkout finalizado;
Taxa de pagamento.
Principais medidas DAX

Algumas das medidas criadas no Power BI:

Total Visitas =
COUNTROWS('sales funnel')
Total Vendas =
CALCULATE(
    COUNTROWS('sales funnel'),
    NOT ISBLANK('sales funnel'[paid_date])
)
Receita =
CALCULATE(
    SUMX(
        'sales funnel',
        RELATED('sales products'[price])
    ),
    NOT ISBLANK('sales funnel'[paid_date])
)
Ticket Médio =
DIVIDE(
    [Receita],
    [Total Vendas]
)
Taxa Conversão =
DIVIDE(
    [Total Vendas],
    [Total Visitas]
)
Clientes Únicos =
DISTINCTCOUNT('sales funnel'[customer_id])
Modelagem dos dados

O modelo foi estruturado com uma tabela fato central e tabelas dimensão relacionadas.

Tabela fato:

sales funnel

Tabelas dimensão:

sales customers
sales products
sales stores
Calendario

A tabela calendário foi criada em DAX para permitir análises temporais e evolução mensal da receita.

Consultas SQL

A pasta sql/ contém consultas utilizadas durante o processo de estudo, exploração e tratamento da base no PostgreSQL.

Os arquivos abordam:

conversões de dados;
tratamentos gerais;
manipulação de textos;
tratamentos de datas;
uso de funções SQL.

Nem todas as consultas foram utilizadas diretamente no dashboard final. Parte delas serviu como apoio para entendimento, validação e preparação da base durante o desenvolvimento do projeto.

Fonte dos dados

A base de dados utilizada neste projeto é uma base educacional disponibilizada em curso de SQL da Hitadore na Udemy.

Este dashboard foi desenvolvido de forma autoral por Lúcio do Vale para fins de estudo, prática e portfólio profissional.

Desenvolvimento visual

Além da parte técnica de dados, o projeto explora direção visual aplicada a dashboards.

Foram aplicados conceitos de:

hierarquia visual;
contraste;
organização por blocos;
uso de imagens de apoio;
identidade visual;
storytelling aplicado à apresentação de indicadores.

A proposta foi unir análise de dados com comunicação visual, aproveitando experiência prévia em Photoshop, direção de arte e planejamento visual.

Aprendizados do projeto

Durante o desenvolvimento deste projeto, foram praticados conceitos de:

conexão do Power BI com PostgreSQL;
modelagem de dados;
criação de tabela calendário;
criação de medidas DAX;
análise de funil de conversão;
análise de vendas, receita e ticket médio;
construção de páginas analíticas;
organização visual de dashboards;
documentação de projeto para portfólio.
Autor

Lúcio do Vale

Projeto desenvolvido como parte do processo de aprendizado e transição para a área de dados, unindo SQL, Power BI, DAX e direção visual.

LinkedIn: https://linkedin.com/in/luciovaleanalytics
GitHub: https://github.com/LucioValeAnalytics
