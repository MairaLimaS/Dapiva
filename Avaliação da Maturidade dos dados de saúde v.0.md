## **Relatório de Maturidade de Gestão de Dados de Saúde, Versão 0\.**  
<h3> MaTz-Data - maturity radar applied to administrative data.</h3>
  
Autoria: Maíra LimaS (lima.maira.souza@gmail.com)

----------------------------------------------------------
  
### **O Estudo de Caso**  

<h6>
Em 2023, o Departamento de Análise Epidemiológica e Vigilância de Doenças Não Transmissíveis (Daent), ligado à SVSA, publicou o perfil das bases de dados produzidas pela vigilância em saúde no Brasil. O documento descreve os sistemas de informação em saúde ligados a diferentes aspectos da linha da vida dos cidadãos brasileiros e que estão sob gestão do departamento. São apresentados, para cada sistema, informações sobre a coleta e processamento, avaliação da qualidade, acesso e limitações e desafios. Esse levantamento também apresenta as principais variáveis de cada sistema. 
<br><br> 
A partir das informações trazidas na publicação em questão, esse documento objetiva analisar a maturidade do modelo de gestão de dados (MMGD), ou um Data Stewardship Maturity Model (DSMM), desses dados. Um modelo de maturidade é uma ferramenta que descreve o estágio de desenvolvimento e os pontos de atenção de uma determinada capacidade ou função. No modelo proposto, os sistemas de informação serão avaliados por sua capacidade de coleta e tratamento de dados, especialmente dados da diversidade.  Os critérios, apresentados abaixo,  serão considerados a partir de uma escala de cinco níveis:
<br><br> 
  
1. **Gestão de Dados**: Referencia os processos de coleta, armazenamento e atualização, bem como a transparência e comunicação desses processos.    
2. **Qualidade de Dados**: Refere-se ao monitoramento e ajuste de precisão, completude, consistência e atualidade das informações presentes nas bases de dados.   
3. **Padrões de Dados**: Mede a adoção de normativas e classificações padronizadas para garantir interoperabilidade e comparabilidade entre sistemas.   
4. **Infraestrutura de Dados**: Avalia os recursos tecnológicos utilizados para armazenar, processar e disponibilizar os dados.   
5. **Acesso aos Dados**: Analisa a disponibilidade e transparência das informações, incluindo a existência de microdados anonimizados acessíveis ao público.   
6. **Literacia de Dados**: Refere-se à capacidade dos usuários de interpretar e utilizar os dados de forma eficaz. Diz respeito tanto a capacitação no uso de ferramentas como EpiInfo e TabWin, quanto a disponibilização de documentos de dados e do domínio e modelo de negócio do sistema de informação.<br>

Assim, cada sistema foi avaliado individualmente em cada um dos critérios mencionados, utilizando uma escala de maturidade de 1 a 5, baseada na existência de práticas de gestão estabelecidas. Por exemplo, práticas criadas para solucionar problemas imediatos são classificadas na escala 1, categoria inicial, e, à medida que se expandem e se tornam mais integradas, evoluem até a escala 5.<br> 

Com base nos critérios acima e no perfil das bases de saúde apresentado, foram elaborados cinco modelos de maturidade para os seguintes sistemas: Sistema de Informações sobre Nascidos Vivos (SINASC), Sistema de Informação de Agravos de Notificação (SINAN), Vigilância de Fatores de Risco e Proteção para Doenças Crônicas Não Transmissíveis por Inquérito Telefônico (VIGITEL), e-SUS Notifica e Sistema de Informações sobre Mortalidade (SIM). A atribuição de pontos foi realizada com base na avaliação das informações fornecidas sobre cada sistema em relação aos componentes propostos pelo Modelo de Maturidade em Gestão de Dados (MMGD). Espera-se que este documento sirva como referência para análises futuras de outros conjuntos de dados administrativos governamentais. <br><br> 

| Componente | SINASC | RESP-Microcefalia | SINAN | VIGITEL | e-SUS Notifica | SIM |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| 1\. Gestão de Dados | 4 | 3 | 3 | 4 | 4 | 4 |
| 2\. Qualidade de Dados | 4 | 3 | 3 | 4 | 4 | 4 |
| 3\. Padrões de Dados | 4 | 4 | 3 | 4 | 4 | 4 |
| 4\. Infraestrutura de Dados | 3 | 2 | 3 | 4 | 3 | 3 |
| 5\. Acesso aos Dados | 4 | 4 | 4 | 4 | 4 | 4 |
| 6\. Literacia de Dados | 3 | 3 | 3 | 2.5 | 3 | 3 |

- **Gestão de Dados**: Sistemas como o SINASC e o VIGITEL têm práticas elaboradas, com coleta bem definida. No entanto, o SINAN e o SIM têm desafios na consistência e qualidade dos dados. Por exemplo, o sub-registro de anomalias congênitas no SINAN e o SIM enfrenta os códigos "garbage" e a baixa cobertura em alguns locais.  
- **Qualidade de Dados**: A maioria das bases de dados apresenta práticas de qualidade, mas o RESP-Microcefalia e o SINAN têm pontos de melhoria relacionados à cobertura, notificação e monitoramento.  
- **Padrões de Dados**: As bases como o SINASC e o VIGITEL têm sistemas bem padronizados com uso de classificações como a CID, enquanto o RESP-Microcefalia ainda carece de padronização em algumas áreas.  
- **Infraestrutura de Dados**: A infraestrutura de algumas bases (como SINASC e SIM) ainda depende de versões off-line, enquanto outras, como o VIGITEL, têm melhor centralização de dados e uma plataforma própria capaz de escalar. O RESP, foi sinalizada dificuldade de exportação e tratamento dos dados, e o SINAN têm arquiteturas diferentes entre as versões e módulos.  
- **Acesso aos Dados**: Todas as bases oferecem acesso aos dados, com microdados anonimizados disponíveis em plataformas públicas como TabNet. Nota-se que os dados são apresentados em formatos como tabelas, painéis e relatórios, o que facilita a consulta. Há também o uso de plataformas para monitoramento de indicadores.  
- **Literacia de Dados**: Há uma capacidade básica de consulta e agregação, mas a documentação ainda é limitada e não está amplamente disponível online. No que diz respeito à aptidão para uso, dados como os do Vigitel exigem habilidades na análise de dados ponderados. 

### **A capacidade de coleta de dados da diversidade.**

<h6>
  
No que diz respeito ao documento analisado, a coleta de dados da diversidade pode ser percebida da seguinte forma:

* Os sistemas **SINASC**, **SINAN**, **VIGITEL**, **e-SUS Notifica** e **SIM** coletam dados sobre sexo e raça/cor.  
* O sistema **e-SUS Notifica** coleta informações sobre etnia e sobre pertencimento a comunidades ou povos tradicionais.

Em termos de maturidade, nota-se que a coleta de sobre a diversidade é **mínima**, focando em sexo e raça/cor, tendo a maior parte dos sistemas relatado dificuldades para escalar. Estudos têm apontado que a avaliação da maturidade de dados para o tratamento de informações de diversidade devem considerar as diretrizes de coleta e análise, considerando o potencial de: <br>

1. **Autoidentificação:** A autoidentificação é um princípio fundamental na coleta de dados sobre origem racial ou étnica. Os indivíduos devem ter o direito de se definir e decidir se desejam ou não divulgar essas informações. A imposição de categorias ou a identificação por terceiros pode resultar em imprecisões e distorções.
2. **Uso de Informações Proxy:** Em alguns casos, quando a autoidentificação não é possível, o uso de informações proxy, como nacionalidade, país de nascimento ou idioma, pode ser uma alternativa para estudos sobre origem étnica e racial. Em outros cenários, a combinação de variáveis como raça/cor, identificação indígena ou quilombola e endereço pode ajudar a compreender a diversidade. No entanto, o uso de proxies apresenta desafios e deve ser conduzido com cautela e transparência. Destaca-se também a importância das estratégias de interseccionalidade, que analisam a combinação de variáveis para revelar novas dimensões sociais dos indivíduos.
3. **Coleta de Dados sobre Experiências de Exclusão e Discriminação:** Experiências de discriminação ou barreiras de acesso enfrentadas por diferentes grupos podem ser incorporadas à avaliação para aprimorar o indicador de maturidade no tratamento desses sistemas operacionais.

Com isso, surgem algumas considerações quanto a **Inclusion by design**:<br>

* Informação por terceiros: Coleta realizada por profissionais de saúde ou declarantes do óbito, sujeita a vieses e inconsistências.
* Categorias: Uso de classificações que possibilitem uma identificação adequada, incluindo opções para aqueles que não se enquadram nas categorias predefinidas.
* Ferramenta de coleta: Avaliação do potencial de inclusão dos métodos e ferramentas de coleta utilizados.
* Qualidade: Análise da qualidade dos dados para identificar e corrigir erros decorrentes da informação fornecida por terceiros.
  
| Sistema de Informação | Variáveis Coletadas | Variáveis de Diversidade Coletadas | Diretrizes de Coleta e Análise (inferências e considerações) |
| ----- | ----- | ----- | ----- |
| **SINASC (Sistema de Informações sobre Nascidos Vivos)** | Identificação do recém-nascido (sexo, peso ao nascer, índice de Apgar, anomalias congênitas); Local de ocorrência (características do estabelecimento de saúde e endereço); Dados da parturiente (escolaridade, situação conjugal, raça/cor e endereço); Responsável legal (nome e idade); Condições do parto (histórico gestacional, tipo de gravidez, semanas de gestação, tipo de parto); Anomalias congênitas; Dados de cartório. | **Sexo** do recém-nascido, **raça/cor** da parturiente, **etnia** indiretamente, via campo de logradouro para registrar o nome da comunidade tradicional. | \- **Autodeclaração:** Coleta de raça/cor baseada na autodeclaração da parturiente- **Interseccionalidade:** Consideração da interação entre raça/cor, escolaridade e situação conjugal.- **Notificação Inclusiva:** Limites dos formulários.- **Privacidade:** É Garantida?.- **Acessibilidade:** Formulários acessíveis? |
| **RESP-Microcefalia** | Dados da notificação; Identificação da gestante ou puérpera (n.º do documento, Data do nascimento, Idade, Raça/cor, Dsei, Etnia, UF de residência, Município de residência, Bairro, CEP, Logradouro, n.º, Ponto de referência, DDD, n.º de contato); Identificação do nascido vivo (nome, sexo, informações sobre o nascimento e características antropométricas); Gestação e parto (anomalias congênitas, tipo de gravidez, perímetro cefálico); Dados clínicos e epidemiológicos da mãe/gestante e do recém-nascido; Exames de imagem; Local de ocorrência; Observações; Evolução; Notificador. | **Sexo** do nascido vivo, **etnia** da mãe/gestante | \- **Autodeclaração:** Coleta de raça/cor baseada na autodeclaração.- **Contexto:** Coleta adequada ao ambiente?.- **Interseccionalidade:** Análise da interação entre raça/cor e outras variáveis.- **Linguagem Clara:** Aplicada nos formulários?- **Treinamento:** Profissionais capacitados?. |
| **SINAN (Sistema de Informação de Agravos de Notificação)** | Notificação (tipo, agravo/doença, local, datas); Investigação (antecedentes epidemiológicos, dados clínicos, dados laboratoriais, tratamento); Conclusão (classificação final, critério de confirmação/descarte, evolução do caso); Dados gerais (tipo de notificação, agravo/doença, estabelecimento de saúde, datas); Notificação individual (nome, data de nascimento, idade, sexo, raça/cor, escolaridade, número do cartão SUS, nome da mãe e se gestante); Dados de residência. | **Sexo**, **Raça/cor** | \- **Autodeclaração:** Coleta de raça/cor baseada na autodeclaração.- **Ponderação:** Uso de fatores para amostra representativa.- **Comparabilidade:** Consistência ao longo do tempo.- **Interseccionalidade:** Interação entre múltiplos fatores.- **Acessibilidade:** Questionários adaptados. |
| **VIGITEL (Sistema de Vigilância de Fatores de Risco e Proteção para Doenças Crônicas por Inquérito Telefônico)** | Sexo, faixas de idade, níveis de escolaridade, tabagismo, consumo de álcool, peso e altura auto referidos, consumo de alimentos, prática de atividade física, diagnóstico de hipertensão, diabetes e depressão; Características demográficas e socioeconômicas (idade, sexo, estado civil, raça/cor, escolaridade); Padrão de alimentação e atividade física; Peso e altura referidos; Consumo de cigarros e bebidas alcoólicas; Autoavaliação do estado de saúde, diagnóstico médico de hipertensão, diabetes e depressão; Exames para detecção precoce de câncer em mulheres; Posse de plano de saúde. | **Sexo**, **"Raça/cor"** | \- **Autodeclaração:** Coleta de raça/cor com opção de recusa. Padrão de questão do Censo 2010.- **Obrigatoriedade:** Variável "raça/cor" obrigatória.- **Inclusão:** Não há opções para diversidade.- **Completude:** A variável final q69_cor agrupa os indivíduos em duas categorias: negros (pretos e pardos) e brancos. Essa reclassificação foi validada pelo Departamento de Apoio à Gestão Participativa, da antiga Secretaria de Gestão Estratégica e Participativa do Ministério da Saúde, no contexto do fortalecimento do controle social das políticas voltadas à saúde da população negra. -**Interseccionalidade:** Interação entre fatores como raça/cor, sexo e idade. |
| **e-SUS Notifica** | Dados gerais (número de notificação, UF e município de notificação, data de notificação); Identificação da pessoa notificada (CPF, passaporte, dados profissionais, CNS, nome, data de nascimento, sexo, raça/cor, etnia, se pertencente à comunidade ou povo tradicional); Dados de residência; Estratégia e local de testagem; Dados clínicos, laboratoriais e epidemiológicos; Encerramento da investigação. | **Sexo**, **Raça/cor**, **Etnia** | \- **Informação por Terceiros:** Potencial viés.- **Categorias:** Grupos étnico-raciais adequados.- **Qualidade:** Verificação e correção de erros.- **Interseccionalidade:** Análise de interações entre múltiplos fatores.- **Transparência:** Clareza nas fontes de informação. |
| **SIM (Sistema de Informações sobre Mortalidade)** | Identificação do falecido (tipo de óbito, data do óbito, cartão SUS, naturalidade, nome, filiação, data de nascimento, idade, sexo, raça/cor, situação conjugal, escolaridade, ocupação habitual); Dados sobre residência do falecido; Local de ocorrência do óbito; Dados sobre óbitos fetais e de menores de 1 ano; Condições e causas do óbito; Identificação do médico atestante; Causas externas; Dados do cartório. | **Sexo**, **Raça/cor** | • **Informação por Terceiros:** Coleta da informação sobre raça/cor é feita por terceiros (profissionais de saúde ou declarantes do óbito) • **Categorias:** Uso de categorias censitárias definidas pelo IBGE. • **Qualidade:** Análise de qualidade dos dados para corrigir erros. • **Interseccionalidade:** Análise da interação entre raça/cor, sexo, idade e causa da morte. • **Transparência:** Transparência nas fontes de informação. |

### **A informação social e a importância de conhecer os marcos e contextos sociais e as bases regulatórias de coleta.**

<h6>
  
A avaliação da maturidade da coleta de dados de diversidade deve considerar não apenas os aspectos técnicos e operacionais, mas também a compreensão e o monitoramento do complexo cenário social e regulatório em que essa coleta está inserida.<br>

O tratamento de dados sobre diversidade é uma pauta tanto nacional quanto internacional, e três elementos se destacam nesse contexto. Parto da hipótese de que a política de dados é moldada pela articulação da administração de dados no país e pela estruturação das políticas multiculturais. Os dilemas envolvem o equilíbrio entre interesses, direitos e salvaguardas em relação a:<br>

* **Interesse Público:** O interesse público, em consonância com a base legal, nacional ou internacional, deve ser proporcional à finalidade, respeitar o direito à proteção de dados e salvaguardar os direitos fundamentais dos titulares dos dados.  
* **Consentimento:** Mediar a relação de coleta com o consentimento e a autonomia.  
* **Fins de Arquivamento, Pesquisa ou Estatística:** Definir critérios para processamento para fins de arquivamento no interesse público, pesquisa científica ou histórica ou fins estatísticos.   
* **Anonimização ou Pseudonimização:** Estabelecer parâmetros e cenários como  uma medida de proteção.  
* **Minimização de Dados:** Coletar apenas os dados estritamente necessários para a finalidade específica e evitar a coleta excessiva de informações pessoais.  
* **Transparência e Informação:** Fornecer aos indivíduos informações claras e acessíveis sobre a coleta, o uso e a proteção de seus dados pessoais.

Segue um exemplo prático.

No caso dos dados sobre raça, cor, etnia e nacionalidade, cada país adota uma abordagem específica para a coleta dessas informações, de acordo com seu contexto. Os diferentes modelos multiculturais europeus como a exclusão diferencial na Alemanha, a assimilação na França e o multiculturalismo na Grã-Bretanha, buscaram equilibrar a preservação da identidade cultural com a participação social. Observa-se que a coleta de dados sobre diversidade enfrenta desafios relacionados à influência do passado colonial e ao regionalismo. Há restrições à coleta de dados sobre origem racial e étnica, com exceções para fins específicos, como combate à discriminação e um ebate sobre o uso de proxies para coleta de dados étnicos, com preocupações sobre privacidade e discriminação indireta. Para avançar, é necessário superar obstáculos como a crise do Estado de bem-estar social, a xenofobia e as categorizações rígidas de grupos minoritários.

De maneira geral, o quadro abaixo ilustra esse cenário.
| País | Contexto Legal | Práticas de Coleta | Desafios e Considerações |
| ----- | ----- | ----- | ----- |
| **Alemanha** | Utiliza o conceito de "histórico de migração". Coleta dados sobre local de nascimento dos pais, idioma falado em casa e nacionalidade. | Realiza pesquisas como o Painel Socioeconômico (SOEP) e o estudo longitudinal "Vivendo na Alemanha". Utiliza proxies como "histórico de migração", local de nascimento dos pais e idioma. | A categorização da origem racial e étnica é um desafio, dada a fluidez dos conceitos e as diversas categorias utilizadas em diferentes pesquisas. |
| **Bélgica** | Promove o monitoramento da integração de imigrantes. Coleta dados sobre discriminação, atitudes e participação em áreas como trabalho, moradia e educação. | Realiza pesquisas como o Diversity Barometer e o Socioeconomic Monitoring. Utiliza proxies como a nacionalidade dos pais e origens estrangeiras em oposição a origens belgas. | A comparabilidade dos dados é um desafio, já que diferentes pesquisas utilizam diferentes proxies para a origem. |
| **Dinamarca** | Utiliza proxies como "novos dinamarqueses" para se referir a minorias étnicas e descendentes de imigrantes. | Realiza o monitoramento da integração através do Integration Monitoring, que coleta dados sobre discriminação, atitudes e participação de minorias étnicas. | A relação do termo "novos dinamarqueses" em relação a diversidade das origens. |
| **Eslováquia** | A "nacionalidade" engloba etnia, religião, língua e origem nacional. A comunidade Roma é frequentemente vista como uma "nacionalidade". | Coleta dados sobre a etnia da população, permitindo apenas a seleção de uma origem étnica no censo. | A categorização da comunidade Roma como uma "nacionalidade" pode ser problemática e não refletir sua identidade étnica. |
| **Espanha** | Interpreta a origem racial como incluindo a origem étnica. | Realiza pesquisas como a Pesquisa Nacional de Imigrantes, que coleta dados sobre discriminação. | A Lei de Proteção de Dados Pessoais não menciona explicitamente a proteção de dados sobre origem étnica, o que pode gerar incertezas. |
| **Estônia** | A "nacionalidade" possui conotação étnica e é utilizada como proxy para a origem étnica. Coleta dados sobre o idioma falado em casa e a língua materna. | Realiza o monitoramento da integração através do Integration Monitoring, que investiga atitudes e experiências de integração de diferentes grupos étnicos. | A representatividade dos dados pode ser um desafio devido ao tamanho da amostra em algumas pesquisas. |
| **Finlândia** | Promove o planejamento da igualdade e a coleta de dados étnicos. Impõe o dever de promover a igualdade a todas as autoridades, empregadores e provedores de educação. | Realiza pesquisas como o Quality of Life Survey e o Immigrant Health and Well-being Study. Utiliza categorias como "nacionalidade ou cor" e proxies para grupos específicos como russófonos, curdos e somalis. | A categorização de alguns grupos, como os curdos, pode ser complexa devido à diversidade linguística e cultural. |
| **França** | Enfatiza a origem migratória. Coleta dados sobre local de nascimento e cidadania dos indivíduos e seus pais. | Realiza pesquisas como a Trajectories and Origins (TeO), que investiga imigrantes, descendentes de imigrantes e pessoas dos territórios ultramarinos franceses. | A ênfase na origem migratória pode não capturar a complexidade da origem racial e étnica da população. |
| **Irlanda** | Impõe o dever de coleta de dados de igualdade, incluindo raça e origem étnica, a órgãos públicos. | Realiza a Pesquisa Nacional Trimestral de Domicílios (QNHS) com um módulo de igualdade que investiga a experiência de discriminação com base em nove motivos, incluindo raça. | Assegurar a representatividade dos dados e a inclusão de todos os grupos étnicos é um desafio contínuo. |
| **Reino Unido** | Impõe o dever de coleta de dados de igualdade, incluindo raça e origem étnica, a órgãos públicos. | Utiliza categorias amplas que combinam indicadores nacionais, étnicos e geográficos no censo. | A categorização da origem racial e étnica é um debate em constante evolução, buscando refletir a diversidade da população. |

-------------
Fonte: 

BRASIL. Ministério da Saúde. Secretaria de Vigilância em Saúde e Ambiente. Departamento de Análise Epidemiológica e Vigilância de Doenças não Transmissíveis. Dados para Vigilância: perfis das bases de dados produzidas pela Vigilância em Saúde no Brasil. Brasília: Ministério da Saúde, 2023. 127 p.: il. Disponível em: https://www.gov.br/saude/pt-br/centrais-de-conteudo/publicacoes/svsa/vigilancia/dados-para-vigilancia-perfis-das-bases-de-dados-produzidas-pela-vigilancia-em-saude-no-brasil/view.

SANSONE, L.. Multiculturalismo, Estado e modernidade: as nuanças em alguns países europeus e o debate no Brasil. Dados, v. 46, n. 3, p. 535–556, 2003. 

SIMON, Patrick. Collecting ethnic statistics in Europe: a review August 2012. Ethnic and Racial Studies, v. 35, n. 8, p. 1366–1391, 2012. DOI: 10.1080/01419870.2011.607507.

Metadados intermediários: https://docs.google.com/spreadsheets/d/1smGDNLgs7kF5t5yTSIxJIqM1R2ry5p6FRmq9lR3unQQ/edit?gid=0#gid=0



