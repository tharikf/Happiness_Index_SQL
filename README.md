### Projeto Happiness Indicator com SQL

Base de dados utilizada: https://www.kaggle.com/datasets/mathurinache/world-happiness-report?select=2022.csv

O PostgreSQL é um sistema gerenciador de banco de dados que permite armazenar, consultar e analisar dados, entre outras atividades. Por meio da linguagem SQL podemos realizar consultas aos dados no próprio sistema ou podemos extrair os dados para realizar análises em uma linguagem como Python ou R. Neste projeto realizamos a análise dos dados do relatório que apresenta um indicador de felicidade para cada país.

Primeiro formulamos perguntas que possam ser respondidas e que suas respostas sejam relevantes para o conhecimento geral. A base de dados contém um índice que representa um índice de felicidade médio experimentado por um cidadão de determinado país. Além disso, alguns fatores considerados relevantes para explicar o índice de felicidade são apresentados também no formato de índice. São eles: PIB Per Capita, Suporte Social, Saúde, Liberdade, Generosidade e Percepção de Corrupção.

Fizemos as seguintes perguntas:
* 1 - Top 5 países mais felizes.\
Os países mais felizes, definidos por meio do índice de felicidade, foram:\
  1º - Finlândia: 7.821\
  2º - Dinamarca: 7.636\
  3º - Islândia: 7.557\
  4º - Suíça: 7.512\
  5º - Holanda: 7.415\
Percebe-se uma predominância de países europeus entre os cinco primeiros do ranking. São países conhecidos por uma renda per capita elevada,
onde as pessoas se sentem suportadas pelo estado de bem-estar social, com baixos índices de corrupção e são lugares
em que as pessoas tem garantido o direito de liberdade individual.

* 2 - Top 5 países mais infelizes.\
Os países mais infelizes, definidos por meio do índice de felicidade, foram:\
  1º - Afeganistão: 2.404\
  2º - Líbano: 2.955\
  3º - Zimbábue: 2.995\
  4º - Ruanda: 3.268\
  5º - Botsuana: 3.471\
Entre esses países percebemos alguns padrões. Primeiro, são países predominantemente pobres. Esses também são países que
constantemente estão envolvidos em conflitos internos. Por fim, são países sem um sistema democrático consolidado. Esses são
apenas alguns dos motivos que podem explicar a posição destes países nos últimos lugares do ranking.

* 3 - Qual dos fatores possui maior correlação com o índice de felicidade?
* 4 - Quais são os 5 países com maior expectativa de vida e PIB Per Capita? Há alguma relação entre as variáveis?
* 5 - A percepção de generosidade depende do PIB Per Capita?
* 6 - Qual a relação entre corrupção e PIB Per Capita?
* 7 - Quais são os 5 países que estão mais distantes do país distópico de referência?
* 8 - Qual é a média do índice de felicidade por região do planeta?



