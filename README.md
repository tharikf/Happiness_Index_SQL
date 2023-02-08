### Projeto Happiness Indicator com SQL

Base de dados utilizada: https://www.kaggle.com/datasets/mathurinache/world-happiness-report?select=2022.csv

O PostgreSQL é um sistema gerenciador de banco de dados que permite armazenar, consultar e analisar dados, entre outras atividades. Por meio da linguagem SQL podemos realizar consultas aos dados no próprio sistema ou podemos extrair os dados para realizar análises em uma linguagem como Python ou R. Neste projeto realizamos a análise dos dados do relatório que apresenta um indicador de felicidade para cada país.

Primeiro formulamos perguntas que possam ser respondidas e que suas respostas sejam relevantes para o conhecimento geral. A base de dados contém um índice que representa um índice de felicidade médio experimentado por um cidadão de determinado país. Além disso, alguns fatores considerados relevantes para explicar o índice de felicidade são apresentados também no formato de índice. São eles: PIB Per Capita, Suporte Social, Saúde, Liberdade, Generosidade e Percepção de Corrupção.

Fizemos as seguintes perguntas:

* 1 - Top 5 países mais felizes.

Os países mais felizes, definidos por meio do índice de felicidade, foram:\
  1º - Finlândia: 7.821\
  2º - Dinamarca: 7.636\
  3º - Islândia: 7.557\
  4º - Suíça: 7.512\
  5º - Holanda: 7.415\
Percebe-se uma predominância de países europeus entre os cinco primeiros do ranking. São países conhecidos por uma renda per capita elevada,
onde as pessoas se sentem suportadas pelo estado de bem-estar social, com baixos índices de corrupção e são lugares
em que as pessoas tem garantido o direito de liberdade individual.

* 2 - Top 5 países mais infelizes.

Os países mais infelizes, definidos por meio do índice de felicidade, foram:\
  1º - Afeganistão: 2.404\
  2º - Líbano: 2.955\
  3º - Zimbábue: 2.995\
  4º - Ruanda: 3.268\
  5º - Botsuana: 3.471\
Entre esses países percebemos alguns padrões. Primeiro, são países predominantemente pobres. Esses também são países que
constantemente estão envolvidos em conflitos internos. Por fim, são países sem um sistema democrático consolidado. Esses são
apenas alguns dos motivos que podem explicar a posição destes países nos últimos lugares do ranking.

* 3 - Qual dos fatores possui maior e menor correlação com o índice de felicidade?

Temos seis fatores que explicam, ou poderiam explicar, os níveis de felicidade das pessoas em um país. São eles:
PIB Per Capita, Suporte Social, Expectativa de Vida, Liberdade, Generosidade e Percepção de Corrupção. Queremos
entender quais desses fatores possuem a maior e a menor relação, por meio do coeficiente de correlação, com o índice
de felicidade.

Começando pela maior relação, encontramos que a maior correlação se deu entre o índice de felicidade com a variável
que indica suporte social e o valor foi de 0.7779, indicando forte correlação. Apesar de correlação não significar causalidade,
o resultado encontrado é coerente. Afinal, uma população que tem um sentimento forte de estar protegida por um estado
de bem-estar social está menos vulnerável a problemas no decorrer da vida que afetariam seu estado emocional.

Já a menor relação foi encontrada entre o índice de felicidade e a variável que indica generosidade da população,
com um coeficiente de correlação de 0.0638. A relação entre os dois índices é praticamente inexistente, contrariando,
talvez, um senso comum de que uma população mais generosa está associada a uma população mais feliz.

* 4 - Quais são os 5 países com maior expectativa de vida e PIB Per Capita? Há alguma relação entre as variáveis?

Os países que estão entre os melhores níveis de expectativa de vida e PIB Per Capita são:\
  1º - Luxemburgo: 1.50\
  2º - Singapura: 1.50\
  3º - Irlanda: 1.45\
  4º - Hong Kong: 1.45\
  5º - Suiça: 1.42\

Para obter esses resultados foi calculada uma média por meio dos valores de cada país para expectativa de vida
e PIB Per Capita, o resultado é o valor apresentado acima para os cinco melhores países no quesito. O resultado
é coerente com o que esses países apresentam em expectativa de vida e renda per capita.

Avaliando a relação entre essas variáveis, encontramos um coeficiente de correlação de 0.8154, indicando uma forte
associação entre os indicadores. Uma explicação pode ser a de que países com rendas per capita maiores têm toda
uma infraestrutura de saúde e saneamento básico a disposição de seus residentes, possibilitando uma expectativa
de vida maior.


* 5 - A percepção de generosidade depende do PIB Per Capita?
* 6 - Qual a relação entre corrupção e PIB Per Capita?
* 7 - Quais são os 5 países que estão mais distantes do país distópico de referência?
* 8 - Qual é a média do índice de felicidade por região do planeta?



