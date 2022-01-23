# TRABALHO 01:  Título do Trabalho
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Álvaro Martins:alvarovinicius7@gmail.com<br>
 Ezequiel Furtado Mapel:ezequiel.f.mapel@gmail.com<br>
...<br>

### 2.INTRODUÇÃO E MOTIVAÇÃO<br>
Este documento contém a especificação do projeto do banco de dados <nome do projeto> 
<br>e motivação da escolha realizada. <br>

> Quem nunca esperou dias demais para a montagem de um móvel? ou que possui algum móvel que apresente defeito? Na geração atual, até móveis podem ser comprados pela internet, mas a empresa que o vende, não presta suporte para a montagem e esta tarefa fica totalmente nas mãos do cliente. Com isso, o cliente precisa estar apto para a montagem ou conserto do móvel, tarefa que demanda tempo e certo nível de conhecimento.
 

### 3.MINI-MUNDO<br>

<!-- Descrever o mini-mundo! (Não deve ser maior do que 30 linhas, se necessário resumir para justar) <br> 
Entrevista com o usuário e identificação dos requisitos.(quando for o caso de sistemas com cliente  real)<br>
Descrição textual das regras de negócio definidas como um  subconjunto do mundo real 
cujos elementos são propriedades que desejamos incluir, processar, armazenar, 
gerenciar, atualizar, e que descrevem a proposta/solução a ser desenvolvida.-->

> Introduzido o problema, a solução é a capacidade de unir o útil ao agradável, isto é, disponibilizar tal serviço para que o afazer citado fique nas mãos de alguém mais qualificado, ou melhor dizendo, é ser o intermédio entre o montador e o cliente. Para isto, o cliente precisará estar registrado no sistema, no qual irá requerer as seguintes informações: nome, CPF, informações de contato (telefones, e-mail, etc.), data de nascimento e endereço. Do montador, será necessário atributos semelhantes ao do cliente, juntamente com: formas de pagamento e suas especialidades. O cliente, através do sistema, fará uma solicitação que precisará inicialmente das informações sobre: o modelo do objeto, foto do objeto, tipo do objeto, tipo de chamado, data da solicitação, localidade, data de agendamento para a realização do procedimento, informação se cliente ainda possui manual de instrução do objeto e estado da solicitação (será preenchida automaticamente como: em espera, aceita ou concluída). Feito a requisição, o sistema irá notificar alguém com as características necessárias para realizar tal tarefa, utilizando como base as informações de modelo do objeto, tipo do objeto e tipo de solicitação, assim, notificando uma pessoa capacitada. Ao se mostrar apto para o serviço, a determinada pessoa irá passar a precificação ao cliente, que por sua vez, será notificado, onde poderá acessar o perfil do respectivo interessado em seu problema, podendo ver as informações públicas do usuário (nome, telefones, endereço), preço para a tarefa, formas de pagamento, bem como trabalhos já concluídos. Assim, o usuário pode escolher quem mais lhe convém. Aceito o trabalho, a requisição estará agendada e aguardará sua conclusão ou cancelamento que em ambos os casos será uma informação salva para o cliente. Por fim, ao concluir a solicitação, o montador terá a possibilidade de incluir a tarefa em seu portfólio que possuirá fotos (opcional), descrição do trabalho realizado e tempo gasto de serviço.


### 4.PROTOTIPAÇÃO, PERGUNTAS A SEREM RESPONDIDAS E TABELA DE DADOS<br>
#### 4.1 RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
<!-- Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>
 -->
<!-- Sugestão: https://balsamiq.com/products/mockups/<br> -->

![Mockup](https://raw.githubusercontent.com/ezequielmapel/Template_Trab_BD1_2020/master/images/prototipo_image.PNG "Tela mockup")<br>
[Arquivo PDF do Protótipo Balsamiq feito para o sistema](https://github.com/ezequielmapel/Template_Trab_BD1_2020/blob/master/arquivos/prototipo.pdf?raw=true "Prototipo")
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
> O sistema precisa inicialmente dos seguintes relatórios:
<!-- * Relatório que mostre o nome de cada supervisor(a) e a quantidade de empregados supervisionados.
* Relatório relativo aos os supervisores e supervisionados. O resultado deve conter o nome do supervisor e nome do supervisionado além da quantidade total de horas que cada supervisionado tem alocada aos projetos existentes na empresa.
* Relatorio que mostre para cada linha obtida o nome do departamento, o valor individual de cada salario existente no  departamento e a média geral de salarios dentre todos os empregados. Os resultados devem ser apresentados ordenados por departamento.
* Relatório que mostre as informações relacionadas a todos empregados de empresa (sem excluir ninguém). As linhas resultantes devem conter informações sobre: rg, nome, salario do empregado, data de início do salario atual, nomes dos projetos que participa, quantidade de horas e localização nos referidos projetos, numero e nome dos departamentos aos quais está alocado, informações do historico de salário como inicio, fim, e valores de salarios antigos que foram inclusos na referida tabela (caso possuam informações na mesma), além de todas informações relativas aos dependentes. 
>> ##### Observações: <br> a) perceba que este relatório pode conter linhas com alguns dados repetidos (mas não todos). <br>  b) para os empregados que não possuirem alguma destas informações o valor no registro deve aparecer sem informação/nulo. 
* Relatório que obtenha a frequencia absoluta e frequencia relativa da quantidade de cpfs únicos no relatório anterior. Apresente os resultados ordenados de forma decrescente pela frequencia relativa. -->
 * Relatório com a quantidade total de pessoas (não montadores) que abriram chamado nos últimos 30 dias.
 * Relatório com a grupamento de chamados por _status_. Com esse relatório, será possível saber a quantidade de chamados com os estados: em espera, aceita ou concluída.
 * Relatório que informe para quais objetos há mais abertura de chamado.
 * Relatório que mostra as especialidades do montados. Deve ser mostrado a descrição da especialidade e a quantidade de montadores que a possuem.
 * Relatório que trás os montadores que possuem mais chamados concluídos. Deve ser trago as informações como nome, cpf/cnpj, chamados, duração do trabalho, preço.

 
 
#### 4.3 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    
[Tabela de dados com todos os atributos - Arquivo XLSX](https://github.com/ezequielmapel/Template_Trab_BD1_2020/blob/master/arquivos/Banco%20de%20Dados%20-%20TabelaTrabalho01%20%5B4.3%5D.xlsx?raw=true)<br>
 [Tabela de dados com todos os atributos - Google Spreadsheets](https://docs.google.com/spreadsheets/d/1GZmAsQ_0WwYCOEinF20JJunsajBNLN6dfOhHNMwa0uo/edit?usp=sharing)
    
    
### 5.MODELO CONCEITUAL<br>
    A) Utilizar a Notação adequada (Preferencialmente utilizar o BR Modelo 3)
    B) O mínimo de entidades do modelo conceitual pare este trabalho será igual a 3 e o Máximo 5.
        * informe quais são as 3 principais entidades do sistema em densenvolvimento<br>(se houverem mais de 3 entidades, pense na importância da entidade para o sistema)       
    C) Principais fluxos de informação/entidades do sistema (mínimo 3). <br>Dica: normalmente estes fluxos estão associados as tabelas que conterão maior quantidade de dados 
    D) Qualidade e Clareza
        Garantir que a semântica dos atributos seja clara no esquema (nomes coerentes com os dados).
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas (Aplicar os conceitos de normalização abordados).   
        
![Modelo Conceitual](https://github.com/ezequielmapel/Template_Trab_BD1_2020/blob/master/images/modelo_conceitual_v3.png?raw=true "Modelo Conceitual")
 [Modelo Conceitual brModelo](https://github.com/ezequielmapel/Template_Trab_BD1_2020/blob/master/arquivos/trabalho1_v3.brM3?raw=true "Modelo Conceitual brModelo")

    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 
   [Descrição dos Dados](https://github.com/ezequielmapel/Template_Trab_BD1_2020/blob/master/arquivos/Tabelas%20e%20Atributos%20do%20Modelo%20Conceitual?raw=true "Descrição dos Dados")

### 6	MODELO LÓGICO<br>
        a) inclusão do esquema lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)
 ![Modelo Lógico](https://github.com/ezequielmapel/Template_Trab_BD1_2020/blob/master/images/logico_v3.PNG?raw=true "Modelo Lógico")
 [Modelo Lógico brModelo](https://github.com/ezequielmapel/Template_Trab_BD1_2020/blob/master/arquivos/trabalho1_logico_v3.brM3?raw=true "Modelo Lógico brModelo")

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas em SQL/DDL 
        (criação de tabelas, alterações, etc..) 
  [Criação/Atualização de tabelas](https://github.com/ezequielmapel/Template_Trab_BD1_2020/blob/master/arquivos/creates.sql?raw=true "Criação/Atualização de tabelas")
        
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
        
   [INSERT das tabelas](https://github.com/ezequielmapel/Template_Trab_BD1_2020/blob/master/arquivos/insert.sql?raw=true "INSERT das tabelas")<br>
   [DROP + CREATE + INSERT](https://github.com/ezequielmapel/Template_Trab_BD1_2020/blob/master/arquivos/drop_create_insert.sql?raw=true "DROP + CREATE + INSERT")
        

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

># Marco de Entrega 01: Do item 1 até o item 9.1<br>
[Consulta das tabelas - Google Colab](https://colab.research.google.com/drive/1JtGcOacV440iXdxW_vtg7Y23LDZownrU?usp=sharing "Google Colab")
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização
 
 [UPDATE + DELETE](https://github.com/ezequielmapel/Template_Trab_BD1_2020/blob/6f65c7a12fce0885450b7ee0ede162ca16bbdbcc/arquivos/update_delete.sql)

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
 
 [SELF JOIN + VIEWS](https://github.com/ezequielmapel/Template_Trab_BD1_2020/blob/e587b6a93a5fb7d1fc00bb6ca9a1a6a8aae0ba8c/arquivos/SelfJoin_Views)
 [VIEW 1 - Pessoas com Chamados Abertos](https://github.com/ezequielmapel/Template_Trab_BD1_2020/blob/master/arquivos/view1_9-9.png)
 [VIEW 2 - montadores com chamados abertos](https://github.com/ezequielmapel/Template_Trab_BD1_2020/blob/master/arquivos/view2_9-9.png)
 [VIEW 3 - Portfolio de Montadores](https://github.com/ezequielmapel/Template_Trab_BD1_2020/blob/master/arquivos/view3_9-9.png)
 [VIEW 4 - Endereço de clientes](https://github.com/ezequielmapel/Template_Trab_BD1_2020/blob/master/arquivos/view4_9-9.png)
 [VIEW 5 - Objetos Cadastrados no Sistema](https://github.com/ezequielmapel/Template_Trab_BD1_2020/blob/master/arquivos/view5_9-9.png)

#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

># Marco de Entrega 02: Do item 9.2 até o ítem 9.10<br>
[Consulta das tabelas - Google Colab](https://colab.research.google.com/drive/1JtGcOacV440iXdxW_vtg7Y23LDZownrU?usp=sharing "Google Colab")
### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

># Marco de Entrega 03: Itens 10 e 11<br>
<br>
<br>
<br> 



### 12 FORMATACAO NO GIT:<br> 
https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


