### Projeto Happiness Indicator com SQL

Base de dados utilizada: https://www.kaggle.com/datasets/mathurinache/world-happiness-report?select=2022.csv

O PostgreSQL é um sistema gerenciador de banco de dados que permite armazenar, consultar e analisar dados, entre outras atividades. Por meio da linguagem SQL podemos realizar consultas aos dados no próprio sistema ou podemos extrair os dados para realizar análises em uma linguagem como Python ou R. Neste projeto realizamos a análise dos dados do relatório que apresenta um indicador de felicidade para cada país.

Primeiro formulamos perguntas que possam ser respondidas e que suas respostas sejam relevantes para o conhecimento geral. A base de dados contém um índice que representa um índice de felicidade médio experimentado por um cidadão de determinado país. Além disso, alguns fatores considerados relevantes para explicar o índice de felicidade são apresentados também no formato de índice. São eles: PIB Per Capita, Suporte Social, Saúde, Liberdade, Generosidade e Percepção de Corrupção.

Fizemos as seguintes perguntas:

* 1 - Top 5 países mais felizes.

      Os países mais felizes, definidos por meio do índice de felicidade, foram:

          1º - Finlândia: 7.821
          2º - Dinamarca: 7.636
          3º - Islândia: 7.557
          4º - Suíça: 7.512
          5º - Holanda: 7.415
  
      Percebe-se uma predominância de países europeus entre os cinco primeiros do ranking. São países conhecidos
      por uma renda per capita elevada, onde as pessoas se sentem suportadas pelo estado de bem-estar social,
      com baixos índices de corrupção e são lugares em que as pessoas tem garantido o direito de liberdade individual.

* 2 - Top 5 países mais infelizes.

      Os países mais infelizes, definidos por meio do índice de felicidade, foram:

          1º - Afeganistão: 2.404
          2º - Líbano: 2.955
          3º - Zimbábue: 2.995
          4º - Ruanda: 3.268
          5º - Botsuana: 3.47

      Entre esses países percebemos alguns padrões. Primeiro, são países predominantemente pobres. Esses também são países que
      constantemente estão envolvidos em conflitos internos. Por fim, são países sem um sistema democrático consolidado. Esses são
      apenas alguns dos motivos que podem explicar a posição destes países nos últimos lugares do ranking.

* 3 - Qual dos fatores possui maior e menor correlação com o índice de felicidade?

      Temos seis fatores que explicam, ou poderiam explicar, os níveis de felicidade das pessoas em um país. São eles:
      PIB Per Capita, Suporte Social, Expectativa de Vida, Liberdade, Generosidade e Percepção de Corrupção. Queremos
      entender quais desses fatores possuem a maior e a menor relação, por meio do coeficiente de correlação, com o índice
      de felicidade.

      Começando pela maior relação, encontramos que a maior correlação se deu entre o índice de felicidade com a variável
      que indica suporte social e o valor foi de 0.7779, indicando forte correlação. Apesar de correlação não significar
      causalidade, o resultado encontrado é coerente. Afinal, uma população que tem um sentimento forte de estar protegida
      por um estado de bem-estar social está menos vulnerável a problemas no decorrer da vida que afetariam seu estado emocional.

      Já a menor relação foi encontrada entre o índice de felicidade e a variável que indica generosidade da população,
      com um coeficiente de correlação de 0.0638. A relação entre os dois índices é praticamente inexistente, contrariando,
      talvez, um senso comum de que uma população mais generosa está associada a uma população mais feliz.

* 4 - Quais são os 5 países com maior expectativa de vida e PIB Per Capita? Há alguma relação entre as variáveis?

      Os países que estão entre os melhores níveis de expectativa de vida e PIB Per Capita são:

      1º - Luxemburgo: 1.50
      2º - Singapura: 1.50
      3º - Irlanda: 1.45
      4º - Hong Kong: 1.45
      5º - Suiça: 1.42

      Para obter esses resultados foi calculada uma média por meio dos valores de cada país para expectativa de vida
      e PIB Per Capita, o resultado é o valor apresentado acima para os cinco melhores países no quesito. O resultado
      é coerente com o que esses países apresentam em expectativa de vida e renda per capita.

      Avaliando a relação entre essas variáveis, encontramos um coeficiente de correlação de 0.8154, indicando uma forte
      associação entre os indicadores. Uma explicação pode ser a de que países com rendas per capita maiores têm toda
      uma infraestrutura de saúde e saneamento básico a disposição de seus residentes, possibilitando uma expectativa
      de vida maior.


* 5 - A percepção de generosidade depende do PIB Per Capita?

      Com essa pergunta queremos saber se há alguma associação entre PIB Per Capita e a percepção de generosidade
      por parte dos habitantes de um país. O coeficiente de correlação foi de -0.1645, indicando que quanto maior o
      PIB Per Capita, menor a percepção de generosidade da população. O resultado é coerente com o encontrado na terceira
      pergunta, já que a relação entre generosidade e o índice de felicidade é quase nula, enquanto a relação entre
      PIB Per Capita e o índice de felicidade é a segunda maior associação entre as variáveis e o índice que determina a
      felicidade. Contudo, apesar do sinal negativo do coeficiente, o valor indica uma associação fraca entre os indicadores.

* 6 - Qual a relação entre corrupção e PIB Per Capita?

      Neste item queremos observar a relação entre a percepção de corrupção e o PIB Per Capita. O valor encontrado
      para o coeficiente de correlação é de 0.3776, que é uma relação positiva moderada. Como interpretar essa relação?
      Residentes de países com PIB Per Capita maiores tem maiores percepções de corrupção? Ou países com habitantes
      que tem maior percepção de corrupção tem rendas maiores?

      Como já destacamos, correlação não indica causalidade. Portanto, nem a ida e tampouco a volta precisam ser verdadeiras.
      O fenômeno de correlação espúria ocorre quando duas variáveis possuem relação mas sem relação de causa e consequência.
      É preciso investigar melhor se há alguma relação de causalidade entre corrupção e renda per capita, inclusive incluindo
      outras variáveis.


* 7 - Quais são os 5 países que estão mais distantes do país distópico de referência?

      Os países que estão entre os mais afastados do país distópico são:

          1º - Singapura: 5.55
          2º - Noruega: 5.44
          3º - Dinamarca: 5.41
          4º - Suécia: 5.38
          5º - Luxemburgo: 5.36
      
      Na base de dados temos um índice que calcula qual seria o índice de um país distópico a partir dos valores dos seis
      índices já mencionados, como o PIB Per Capita, Suporte Social e etc. Em outras palavras, dados os valores dos fatores
      que podem explicar a felicidade, qual seria o país em situação oposta ao país em questão?
      
      A interpretação é mais simples do que o conceito. Quanto mais distante o índice de felicidade estiver do índice distópico,
      melhor a situação de um determinado país. Singapura foi o país que apresentou a maior diferença nesse cálculo sendo,
      portanto, o país mais distante em relação ao seu país distópico de referência.

 
* 8 - Qual é a média do índice de felicidade por região do planeta?

      Por fim, investigamos qual é a média do índice de felicidade para as diferentes regiões do planeta. Agrupamos os países
      em oito diferentes regiões de acordo com a sua localidade. O agrupamento de cada país por região segue o conceito utilizado
      pelo Banco Mundial.
      
        1º América do Norte: 7.00
        2º Europa: 6.40
        3º América Central: 6.17
        4º América do Sul: 5.94
        5º Ásia & Pacífico: 5.41
        6º Médio Oriente: 5.24
        7º Mundo Árabe: 5.20
        8º África
     
      Os resultados são coerentes com os encontrados em alguns itens anteriores quando analisamos os países individualmente.
      Nenhum país da américa do norte apareceu entre os melhores colocados nas questões anteriores, enquanto países europeus
      praticamente dominaram. Entretanto, apesar de aparecer bastante eram quase sempre os mesmos países europeus. Outros países
      europeus com índices menores colocaram a média um pouco pra baixo, deixando a região em segundo lugar.
      
      Também não surpreende os países da África em último. Em alguns itens que pudemos ver os países em piores colocações,
      pudemos ver países africanos. A explicação dada em um item anterior também é válida aqui. Países africanos possuem
      renda per capita bastante reduzida, sofrem com a falta de suporte social, são países que frequentemente estão vivendo
      conflitos internos e a falta de democracia também é um problema comum. Essas variáveis e outras podem explicar o resultado.



