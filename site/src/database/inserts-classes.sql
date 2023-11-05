USE ragnawiki;

INSERT INTO classe(nome, tipo, descricao, classeAnterior) VALUES ('Aprendizes', 'Classe Inicial', 'Aprendizes não possuem nenhum tipo de especialidade, além da determinação de se tornarem melhores e mais fortes.
Todos em Rune-Midgard já foram aprendizes no início de suas aventuras e escolheram caminhos diferentes, tornando cada habitante deste mundo fantástico um ser único, seja pela escolha do cabelo, a distribuição dos atributos ou os equipamentos usados.
Como aprendiz, você deverá evoluir até o nível de classe 10 para escolher uma das 9 primeiras classes.
Ou, se preferir, alcance o nível de base 45 para aventurar-se como os superaprendizes.', null), 
('Invocadores', 'Classe Inicial', 'Por possuírem forte ligação com a natureza, a raça Doram tem aptidão para ser Invocador, uma classe que nasceu em Lasagna. Depois das habilidades iniciais, os poderes dos Invocadores se ramificam em três vertentes: Fauna, Selva e Maré.
Investir alguns pontos no Caminho da Maré renderá boas habilidades de suporte que ajudam todo grupo.
Dedicando seus pontos de habilidade no Caminho da Fauna, você poderá desferir poderosos ataques físicos à distância.
Já atribuindo pontos no Caminho da Selva, é possível conjurar ataques mágicos das mais variadas propriedades.
A classe só pode equipar cajados do tipo Cauda de Gato, mas também poderão usar qualquer equipamento que sirva para todas as classes.
Por ser diferente da raça dos Humanos, os Doram não são afetados por efeitos relacionados à raça Humanoide ou Humano.
Os Invocadores só podem alcançar até 125 de atributos.', null), 
('Espadachins', 'Classe 1','Espadachins podem usar as melhores armaduras de Rune-Midgard, que combinadas com o seu alto vigor e capacidade de se curarem rapidamente, os tornam a frente de ataque em qualquer tipo de combate.
São capazes de empunhar tanto lanças quanto espadas de uma ou duas mãos, e estão sempre prontos a defender os mais fracos e revidarem com força com suas incríveis habilidades de batalha.
Ao atingirem o nível de classe 40, podem evoluir para Cavaleiros ou Templários.', 1),
('Magos', 'Classe 1', 'Magos usam cajados para amplificar seus poderes arcanos, que combinados com um extenso conhecimento dos elementos formadores do nosso mundo, são capazes de fazer estragos devastadores em questão de segundos.
Eles não podem usar armaduras pesadas, por isso sempre aplicam estratégias bem elaboradas e reações rápidas nas batalhas para aproveitarem ao máximo as fraquezas de seus adversários.
Ao atingirem o nível de classe 40, podem evoluir para Bruxos ou Sábios.', 1), 
('Gatunos', 'Classe 1', 'Gatunos destacam-se pela agilidade sem igual.
São mestres da esquiva e especialistas em ataques rápidos com as adagas, sendo capazes de eliminar seus oponentes com uma velocidade espetacular.
Dificilmente são acertados em batalha e são capazes de se esconder dos inimigos camuflando-se no ambiente.
São especialistas nas artes do veneno e podem fazer uso de boas armaduras, espadas de uma mão, e até mesmo arco e flecha.
Ao atingirem o nível de classe 40, podem evoluir para Mercenários ou Arruaceiros.', 1),
('Mercadores', 'Classe 1', 'Mercadores não possuem muita aptidão para batalhas, porém apresentam habilidades únicas de comércio.
Movimentam a economia com seus carrinhos cheios de itens e suas lojas com tudo que se pode desejar.
A única habilidade de batalha que possuem utiliza seu precioso zeny, mas cada centavo é bem gasto no poder destrutivo.
Ao atingirem o nível de classe 40, podem evoluir para Ferreiros ou Alquimistas.', 1),
('Noviços', 'Classe 1', 'Noviços são abençoados com o poder de curar e aumentar os poderes e de si próprios e de seus companheiros de batalha.
Dedicados a tornar o mundo um lugar melhor, dão apoio a outras pessoas ou pelas próprias mãos, livrando o mundo das legiões de monstros das trevas.
Ao atingirem o nível de classe 40, podem evoluir para Sacerdotes ou Monges.', 1),
('Arqueiros', 'Classe 1', 'Arqueiros são hábeis atiradores, destacando-se pela enorme precisão e rapidez com o arco e flecha.
Conseguem abater seus inimigos a longas distâncias, antes mesmo de serem notados.
Sempre determinados a aprimorar sua maestria com o arco e flecha, os arqueiros possuem habilidades específicas para esta arma, que aumenta não só sua destreza, como também a agilidade.
Ao atingirem o nível de classe 40, podem evoluir para Caçadores. Também podem virar Bardos se forem homens e Odaliscas se forem mulheres.', 1), 
('Cavaleiros', 'Classe 2', 'Os galantes Cavaleiros, montados em seus Peco-Pecos que aumentam sua velocidade e dano com lanças, são capazes de meter medo no mais terrível dos adversários.
Eles podem ter a defesa de uma muralha invencível ou possuírem uma velocidade inacreditável com as espadas de duas mãos.
Ao atingirem o nível de base 99, podem transcender para Lordes ou evoluírem para Cavaleiros Rúnicos.', 3),
('Templários', 'Classe 2', 'Treinados como guerreiros, Templários têm habilidades excepcionais para o combate, utilizando sua espada e escudo como armas para defesa.
Ao contrário dos cavaleiros, a classe se especializou no cuidado e montaria de Grand Pecos, abundantes na república de Schwartzwald.
Movido por uma forte fé e mestre no uso do escudo, eles se adaptaram as condições de defender seus companheiros, recebendo todo o dano que cada membro de seu grupo sofre em combate.
Ao atingirem o nível de base 99, podem transcender para Paladinos ou evoluírem para Guardiões Reais.', 3), 
('Bruxos', 'Classe 2', 'Mestres dos poderes arcanos, os Bruxos possuem meios de destruir hordas inteiras de adversários com apenas uma magia bem escolhida.
Estes profundos conhecedores dos elementos podem dominar o fogo, a água, a terra e os trovões... mas apesar de todo esse poder, eles têm muita dificuldade em sobreviverem sozinhos, não suportando golpes fortes.
Ao atingirem o nível de base 99, podem transcender para Arquimagos ou evoluírem para Arcanos.', 4),
('Sábios', 'Classe 2', 'Os Sábios estudaram para melhorar seus feitiços iniciais de mago.
Se aproveitam dos elementos para dar poderes especiais às armas de seus companheiros e usam habilidades de encantar o solo para ajudar aliados com uma combinação de magias.
Sábios podem também manipular os elementos para contra-atacar até as mais poderosas magias, tornando-os um suporte indispensável em qualquer grupo.
Ao atingirem o nível de base 99, podem transcender para Professores ou evoluírem para Feiticeiros.', 4), 
('Mercenários', 'Classe 2','Com a capacidade única de manusear duas armas ao mesmo tempo, os Mercenários são especialistas em não serem percebidos, até que seja tarde demais, ou de eliminarem seus adversários lentamente com o uso de venenos.
Podendo empunhar tanto katares, que favorecem os ataques críticos e ignoram a defesa, como adagas, que se valem do ataque duplo (e também machados e espadas de uma mão), são capazes de causar um dano incomparável em poucos golpes.
Ao atingirem o nível de base 99, podem transcender para Algozes ou evoluírem para Sicários.',5),
('Arruaceiros', 'Classe 2','Elevando a vadiagem para um nível mais alto, os Arruaceiros têm orgulho em serem mestres na arte de pichação de paredes.
Como qualquer meliante, eles podem remover as armaduras de seu oponente num piscar de olhos e ainda causar grande dano.
Os Arruaceiros certamente são uma ótima opção para aqueles que querem se especializar nas artes obscuras da imitação ou mesmo se aprofundar no arco e flecha.
Ao atingirem o nível de base 99, podem transcender para Desordeiros ou evoluírem para Renegados.',5), 
('Ferreiros', 'Classe 2', 'Ferreiros podem escolher entre dois caminhos: o de forjar armas poderosas e elementais ou de possuir uma força descomunal capaz de derrotar os maiores adversários.
Grandes conhecedores dos minerais, são capazes de encontrá-los nos lugares menos prováveis e de refiná-los como nenhuma outra classe.
Ao atingirem o nível de base 99, podem transcender para Mestres-Ferreiros ou evoluírem para Mecânicos.', 6), 
('Alquimistas', 'Classe 2', 'Alquimistas são especializados em poções e na criação da vida.
Como resultado, eles tem íntimo conhecimento da flora e fauna dos três continentes.
Com a ciência, os alquimistas podem fazer poções muito mais poderosas que aquelas vendidas em lojas.
Não abstendo-se ao simples sopro de vida, também pesquisam táticas de guerra, usando bombas facilmente arremessáveis.
Ao atingirem o nível de base 99, podem transcender para Criadores ou evoluírem para Bioquímicos.', 6),
('Monges', 'Classe 2', 'Tendo poderes mentais tão elevados quanto seus antecessores, os Monges usam sua elevada técnica para aperfeiçoar sua força física.
Podem ser considerados como uma ascensão, alguém de extrema grandeza no corpo e na mente.
Dotados de um poder além dos planos materiais, a classe procura o equilíbrio de seu poder na eterna busca para se tornar um guerreiro completo.
Ao atingirem o nível de base 99, podem transcender para Mestres ou evoluírem para Shuras.', 7),
('Sacerdotes', 'Classe 2', 'Graças a sua grande fé e dedicação a Odin, Sacerdotes possuem grandes poderes divinos, capazes de realizar milagres e elevar os espíritos aventureiros de todos os guerreiros.
Sua missão é a de purificar o mundo eliminando os demônios e mortos-vivos que cruzarem seu caminho.
Ao atingirem o nível de base 99, podem transcender para Sumo Sacerdotes ou evoluírem para Arcebispos.', 7), 
('Caçadores', 'Classe 2', 'Caçadores são grandes conhecedores dos animais a ponto de serem capazes de domesticar uma ave de rapina para ajudá-los nas batalhas.
Valendo-se de uma impressionante velocidade com o arco e flecha, estes guerreiros são capazes de evitar o combate corpo a corpo, fazendo uso de armadilhas variadas.
Ao atingirem o nível de base 99, podem transcender para Atiradores de Elite ou evoluírem para Sentinelas.', 8), 
('Bardos', 'Classe 2','Dizem que as músicas acalmam a alma... se for esse o caso, então os bardos são sem dúvidas muito importantes.
Com o poder de suas músicas, belas e mortais, o Bardo é uma boa escolha se você quiser um ótimo contador de histórias e um habilidoso cantor.
Como classe de suporte, o Bardo concentra-se em cantar para animar os membros do grupo na luta contra os inimigos, embora eles possuam as habilidades de um arqueiro e possam lutar também.
Ao atingirem o nível de base 99, podem transcender para Menestréis ou evoluírem para Trovadores.',8), 
('Odaliscas', 'Classe 2','Treinadas na arte da dança, elas usam seus movimentos para cativar sua plateia.
Dizem que alguns de seus movimentos podem até mesmo fazer uma pessoa aumentar sua força ao ponto delas conseguirem literalmente mover montanhas... mas a verdade é que quando uma Odalisca começa a dançar, aqueles que a observam são hipnotizados e caem sob seu controle.
Ao atingirem o nível de base 99, podem transcender para Ciganas ou evoluírem para Musas.',8), 
('Lordes', 'Classe Transcendental','Levando a definição de Cavaleiro a outro nível, os Lordes são guerreiros de grande vigor e força descomunal.
Atuam na frente de batalha sem temer os inimigos, podendo dispersa-los em pouco tempo sem dificuldades.
Suas habilidades transcendentais permitem atingir danos maiores com ataques comuns e ajudar em sua sobrevivência, tornando o Lorde um adversário digno de qualquer campeão.
Ao atingirem os níveis 99 de base e 60 de classe, podem evoluir para Cavaleiros Rúnicos.',9)
, ('Paladinos', 'Classe Transcendental', 'Conhecidos como os soldados de Odin, os Paladinos farão qualquer pagão se arrepender de joelhos.
Profissionais no uso de escudos para a batalha, não pensam duas vezes antes de jogá-lo contra seus oponentes, mas não pense que ficarão vulneráveis sem o escudo.
Capazes de sacrificar o corpo em nome de seus aliados, Paladinos possuem uma fé esmagadora, sendo ecoada aos seus companheiros de batalha, funcionando como um cântico.
Ao atingirem os níveis 99 de base e 60 de classe, podem evoluir para Guardiões Reais.', 10),
('Arquimagos', 'Classe Transcendental', 'Dominam como ninguém a arte de converter as forças da natureza em armas de destruição.
Esta característica peculiar transforma os Arquimagos em guerreiros de poder imensurável.
Em sua nova vida, ganham feitiços que necessitam de maior uso estratégico, garantindo a autossuficiência do Arquimago se usadas corretamente em batalha.
Dominam a arte de contra-atacar magias que, no passado, atrapalhavam seus poderes em área.
Ao atingirem os níveis 99 de base e 60 de classe, podem evoluir para Arcanos.', 11), 
('Professores', 'Classe Transcendental', 'Obtendo tamanho domínio dos feitiços, podendo brincar com magia a seu bel prazer, os Professores são especialistas em transmitir seu conhecimento até para as mentes mais ignorantes.
Estudaram a ponto de replicar magias uma segunda vez enquanto conjura novamente, pesquisaram a fundo o poder da alma e como sugá-la de seus oponentes, além de dominarem a mesma arte das aranhas na criação de teias firmes e fortes. Se você encontrar um professor, saiba que ele já foi um grande sábio.
Ao atingirem os níveis 99 de base e 60 de classe, podem evoluir para Feiticeiros.', 12), 
('Algozes', 'Classe Transcendental', 'Movendo-se pelas sombras e especializando-se em venenos extremamente mortais, os Algozes se tornam mais velozes e perigosos que seus antecessores.
Superiores na arte com katar, são juízes que julgam e executam seus alvos.
Mas não pense que somente seu corpo sofrerá com as chagas desse assassino, afinal, Algozes também poderão ser destruidores da sua alma.
Ao atingirem os níveis 99 de base e 60 de classe, podem evoluir para Sicários.', 13), 
('Desordeiros', 'Classe Transcendental', 'Incapazes de viver entre quatro paredes, seguindo ordens e vestindo uniformes, os Desordeiros seguem o lema da liberdade a todo custo.
São capazes de caminhar malandramente entre as casas e de remover todos os equipamentos dos viajantes desavisados.
Também preservam a mente ao copiar poderes dos oponentes e ainda são profissionais em bloquear ataques com espadas.
Ao atingirem os níveis 99 de base e 60 de classe, podem evoluir para Renegados.', 14), 
('Mestres-Ferreiros', 'Classe Transcendental', 'Ao atingir um entendimento imenso da arte de moldar o metal, os Mestres-Ferreiros usam o aço como se fosse uma coisa viva, maleável e extremamente poderosa.
Esse conhecimento pode ser usado para criar as armas perfeitas ou para destrui-las com um só golpe.
São capazes de turbinar o próprio instrumento de trabalho, o carrinho, fazendo dele um ótimo aliado tanto para o suporte quanto para a batalha.
Ao atingirem os níveis 99 de base e 60 de classe, podem evoluir para Mecânicos.', 15),
('Criadores', 'Classe Transcendental', 'Continuando a missão de seus antecessores, os Criadores estudam os cernes da química e a biologia, tornando-os profundos conhecedores das pequenas formas de vida, como as plantas e os homunculus.
Melhoraram técnicas com explosivos, combinando suas duas habilidades mais poderosas em uma só, tornando-se autossuficientes em batalha.
Aperfeiçoaram técnicas de revestimento e de arremesso, economizando frascos e melhorando a efetividade de cura de suas poções.
Ao atingirem os níveis 99 de base e 60 de classe, podem evoluir para Bioquímicos.', 16), 
('Mestres', 'Classe Transcendental', 'Ultrapassando as limitações do próprio corpo e alcançando o equilíbrio perfeito entre a mente e a alma, os Mestres já não cometem os mesmos erros de suas vidas passadas.
Com maestria e velocidade, conseguem agilizar na evocação de esferas espirituais e se profissionalizaram na arte da luta corporal.
Instigados a usar a palma da mão, os Mestres desejam saciar, não só o desejo de justiça, mas também, a tranquilidade da própria consciência.
Ao atingirem os níveis 99 de base e 60 de classe, podem evoluir para Shuras.', 17), 
('Sumo_Sacerdotes', 'Classe Transcendental', 'Sumo Sacerdotes são vistos como um porto seguro para os aventureiros desamparados, a salvaguarda nas batalhas, o pacificador dos espíritos, a representação de Odin caminhando entre os seres humanos.
Porém, o poder sagrado também pesa para o lado das sombras.
Os Sumo Sacerdotes são capazes de se resguardar de seus poderes para não gastarem muita energia vital da mente, além de dominar as escrituras sagradas com a proteção angelical.
Ao atingirem os níveis 99 de base e 60 de classe, podem evoluir para Arcebispos.', 18), 
('Atiradores_de_Elite', 'Classe Transcendental', 'Conhecedores da natureza como a palma das próprias mãos, Atiradores de Elite conseguem maestria no arco e flecha maior que seus antecessores.
São capazes de aguçar sua visão e aperfeiçoar suas técnicas de tiro, conseguindo abater grandes hordas de inimigos com uma única flecha.
Conectados com as criaturas da floresta, adestram uma nova ave de rapina, que ajuda nas batalhas mergulhando o bico contra os alvos em uma incrível velocidade.
Ao atingirem os níveis 99 de base e 60 de classe, podem evoluir para Sentinelas.', 19),
('Menestréis', 'Classe Transcendental', 'A música pode fazer milagres, tornar sonhos reais, trazer memórias de um amor do passado e até mesmo trazer a coragem de volta ao coração mais abalado.
Não importa o quão desesperada seja a situação, a nota certa pelas mãos de um Menestrel pode trazer a inspiração ao mundo.
Ao atingirem os níveis 99 de base e 60 de classe, podem evoluir para Trovadores.', 20), 
('Ciganas', 'Classe Transcendental', 'A dança pode fazer milagres, tornar sonhos reais, trazer memórias de um amor do passado e até mesmo trazer a coragem de volta ao coração mais abalado.
Não importa o quão desesperada seja a situação, o movimento certo pelo corpo de uma Cigana pode trazer a inspiração ao mundo.
Ao atingirem os níveis 99 de base e 60 de classe, podem evoluir para Musas.', 21),
('Cavaleiros_Rúnicos', 'Classe 3', 'Mesclando o poder da espada com a energia arcana, os Cavaleiros Rúnicos são os aventureiros e aventureiras que optaram por seguir o caminho da guerra.
Agora, além de mais versáteis nas lâminas, eles também dominaram as montarias, aperfeiçoando ainda mais o combate com um Ferus como aliado.
Desenvolveram uma nova arma de guerra: as Runas, capazes de oferecer magias incríveis que melhoram o combate e desferem altos danos nos oponentes.
As runas são um triunfo à parte, diante de tantas opções que a classe pode oferecer.', 22), 
('Guardiões_Reais', 'Classe 3', 'Os Guardiões Reais surgiram três séculos atrás, na época em que Glast Heim foi construída.
O regente de Rune-Midgard na época, Rei Schmitz Von Walther, sabia da importância de preparar uma força especial para lidar com a ameaça constante dos inimigos da nação.
Domine o uso da lança e aprenda diversas novas formas de ataque.
Use poderes sagrados para aumentar suas habilidades e causar dano aos seus inimigos.
Una-se a outros Guardiões Reais para aumentar seus poderes, e monte em um forte e imponente Grifo!', 23), 
('Arcanos', 'Classe 3', 'No mais alto cargo da hierarquia mística, os Arcanos se destacam por terem se especializado na leitura de grimórios mágicos, capazes de armazenar feitiços na própria mente para lançá-los imediatamente, sem qualquer conjuração.
Com a prática da leitura, veio a capacidade de expandir os horizontes, sendo capazes de alcançarem áreas muito maiores com suas novas magias, cada uma delas com possibilidades de afetar oponentes mais distantes possíveis e ainda causar condições anormais nos desavisados.
Obtenha controle das caóticas forças da magia e descubra novas formas de causar dano e condições anormais em seus inimigos!', 24),
('Feiticeiros', 'Classe 3', 'Quando o primeiro sábio conseguiu estabelecer um contrato com um Elemental do Fogo, ele se tornou o primeiro Feiticeiro, abrindo caminho para o surgimento de uma nova organização mágica.
Domine os quatro elementos básicos da natureza e desenvolva um novo tipo de feitiçaria.
Ultrapasse os limites do mundo à sua volta e use sua magia para distorcer e controlar o ambiente, transformando o terreno ou até o clima ao seu redor.
Aprenda novas formas de ataque, controlando poderosas energias místicas!', 25), 
('Sicários', 'Classe 3', 'Melhorando suas técnicas milenares de luta corpo a corpo, os Sicários continuam vivendo e andando nas sombras, sempre sorrateiros e dispostos a salvar a própria pele.
Se antes eram capazes de dominar as técnicas de uso do veneno, agora são peritos em toxinas e profundos conhecedores de ervas venenosas.
Torne-se um mestre dos venenos, incapacitando seus inimigos com novas e mortíferas misturas.
Abuse de suas habilidades superiores de furtividade para se esquivar, bloquear ataques e se esconder de seus oponentes.
Domine ataques especiais capazes de atingir todos ao seu redor ou inimigos mais distantes.', 26), 
('Renegados', 'Classe 3', 'Três arruaceiros estudiosos em particular, especializados em arqueologia, geometria, matemática e armadilhas, descobriram pinturas nas paredes de uma antiga ruína na outra dimensão que escondia valorosos segredos.
Assim nasceu a arte das sombras e os primeiros Renegados, viva à margem da sociedade, usando as sombras e criativas estratégias de combate para estar sempre um passo à frente de seus inimigos.
Cause efeitos negativos e faça suas pinturas afetarem o mundo à sua volta.
Domine truques e furtividade para escapar de qualquer enrascada.', 27), 
('Mecânicos', 'Classe 3', 'A ciência sempre tentou dominar e controlar a energia arcana, mas devido à natureza caótica da magia, nunca foi bem sucedida.
As ruínas de Juperos são uma prova disso. Porém, a tecnologia evoluiu e finalmente um pesquisador da República de Schwartzwald foi capaz de mesclá-la de forma eficiente com a magia, criando a Mecânica Arcana.
Rapidamente, outros estudiosos migraram para a região e a nova tecnologia foi se expandindo, formando os Mecânicos especialistas capazes de pilotar um M.E.C.H.A.:
Mecanismo Especial de Combate com Habilidade Arcana.', 28), 
('Bioquímicos', 'Classe 3', 'Alguns alquimistas focaram seus estudos nos princípios da transformação bioquímica e passaram a ser chamados de Bioquímicos.
Domine todo o poder da ciência e da criação. Desenvolva seu carrinho em uma verdadeira máquina de guerra.
Tenha a natureza em suas mãos, criando novos tipos de plantas para agirem sob seu comando.
Crie novos tipos de poções, sementes e materiais químicos!', 29), 
('Shuras', 'Classe 3', 'Com bastante disciplina, monges continuaram seu treinamento enquanto faziam boas ações, o que fez com que os outros lhes dessem as boas vindas e passassem a vê-los com novos olhos, abandonando o preconceito inicial.
Assim, os Shuras passaram a ser chamados de "Deuses da Guerra".
Treine corpo e mente e domine seu ki para que seus poderes físicos ultrapassem os limites humanos e assim torne-se um novo tipo de campeão divino!', 30), 
('Arcebispos', 'Classe 3', 'O mais alto posto dos aventureiros e aventureiras que seguiram o caminho da luz é dos Arcebispos.
Como o mal constantemente ameaçando o mundo, não restaram dúvidas de que o poder de Odin precisava ser alcançado.
O sacro dom dos Arcebispos de ajudar o próximo foi ampliado, facilitando as grandes massas de alcançar a bênção e a cura.
Os fiéis mais extremistas na erradicação do mal também foram contemplados com habilidades físicas e mágicas de propriedade sagrada: nada mais justo que promover o encontro com Odin com mais rapidez.
Domine os mais fortes poderes divinos e torne-se capaz de exorcizar o mal do mundo!', 31),
('Sentinelas', 'Classe 3', 'Mais próximos da natureza, os Sentinelas aguçam seus instintos para usar o ambiente a seu favor.
Podem vivenciar as mais diversas experiências, masterizando o arco ou aprimorando as armadilhas, sempre acompanhado do seu fiel animal: seja a Coruja ou o Worg.
Ainda que tenham fragilidades, os Sentinelas conseguem causar danos devastadores em uma grande área.
Mescle seus ataques à distância com sua habilidade de camuflagem para evitar o contra-ataque inimigo.
Domine e monte Worgs, os bestiais lobos de guerra, criados para atacar os inimigos ao lado de seu mestre.', 32), 
('Trovadores', 'Classe 3', 'Não se sabe ao certo a origem dos Trovadores, mas se perguntar a qualquer bardo, ele dirá que tudo começou com Mello Dias Trovador, que compôs inúmeras canções durante suas viagens.
Sua voz era tão magnífica que encantou a todos que o conheceram, conquistando até a admiração de outros bardos e menestréis.
Torne-se um ídolo de multidões e tenha o mundo a seus pés, encantado pelo poder da sua arte.
A música é sua principal arma e inspiração, e através de melodias você será capaz de fortalecer seus colegas e prejudicar seus inimigos.
Forme uma dupla e libere todo o potencial da sua música!', 33), 
('Musas', 'Classe 3', 'As Musas são odaliscas e ciganas que continuaram se empenhando em sua arte até sua dança atingir níveis sobrenaturais, capazes de inspirar ou aterrorizar qualquer pessoa.
Torne-se desejada por multidões e tenha o mundo a seus pés, encantado pelo poder da sua arte.
A dança é sua principal arma e inspiração e através dos seus movimentos, será capaz tanto de fortalecer seus colegas, como prejudicar seus inimigos.
Forme uma dupla e libere todo o potencial da sua arte!', 34), 
('Taekwons', 'Classe 1 Expandida', 'Praticantes da arte marcial conhecida como Taekwondo, eles são especializados em usar diferentes tipos de chutes para acabar com seus oponentes.
Por causa disso, os Taekwons não podem equipar nenhum tipo de arma.
Quando evoluem, um anjo especial usa Bênção e Aumentar Agilidade com uma duração de 10 minutos.
Ao atingirem o nível de classe 40, podem evoluir para Mestres Taekwons ou Espiritualistas.', 1), 
('Ninjas', 'Classe 1 Expandida', 'Baseados nos guerreiros das sombras do Japão feudal, os Ninjas são habitantes da escuridão e adeptos às artes de atacar sem serem vistos.
Eles utilizam sua rapidez e versatilidade como principal arma.
Eles possuem uma grande perícia em lutas corporais, armas de arremesso e habilidades mágicas.
Ao atingirem o nível de base 99, homens podem evoluir para Kagerou e mulheres, para Oboro.', 1), 
('Justiceiros', 'Classe 1 Expandida', 'Os Justiceiros são os heróis da revolução industrial da república de Schwartzwald, ganhando esta reputação por terem se rebelado contra o sistema vigente, exigindo justiça para os assassinos que foram trocados por guardiões nas guerras entre senhores de castelo.
Aproveitando a tecnologia do continente e da cidade do aço, os Justiceiros são os únicos que podem usar armas de fogo, como revólveres, espingardas e rifles, cada uma com sua característica própria.
Ao atingirem o nível de base 99 e classe 50, podem evoluir para Insurgentes.', 1),
('Superaprendizes', 'Classe 1 Expandida', 'Aventureiros e aventureiras que não desejam seguir o caminho das classes comuns, optam por se tornarem Superaprendizes ao atingirem o nível de base 45.
É uma classe extremamente versátil por possuir a grande maioria das habilidades das classes iniciais, possibilitando a magia, o ataque físico, o suporte ou combinando todos os três tipos.
Levam consigo o poder oculto do Anjo da Guarda, fiel protetor e guardião.
Apesar de tantas vantagens, Superaprendizes têm as mesmas fragilidades dos Aprendizes.
Ao atingirem o nível de base 99, podem expandir a classe para ganhar novas habilidades e seguir evoluindo.', 1), 
('Mestres_Taekwons', 'Classe 2 Expandida', 'Conseguem alinhar os poderes cósmicos para guiá-los para o caminho da força.

Devido aos anos de estudo e um espírito aprumado com o mundo, eles são capazes de unir-se com os corpos celestiais para se tornarem mais efetivos em combate.
São capazes de enxergar muito além do seu campo de visão quando estão sentados.
Suas habilidades funcionam em dias específicos, de acordo com as posições solares, lunares e estelares.
Um dia solar é contado em números pares
Um dia lunar é contado em números ímpares
Um dia estelar é contado em mútiplos de 5.
Ao atingirem o nível de base 99 e classe 50, podem evoluir para Mestres Estelares.', 48), 
('Espiritualistas', 'Classe 2 Expandida', 'Focam seus estudos na compreensão da alma e na invocação de espíritos ancestrais, capazes de incorporá-los em seus companheiros.
Um personagem emanando o espírito dos Espiritualistas se torna muito mais poderoso e pode usar habilidades perdidas, que apenas os maiores mestres eram capazes de realizar.
Por seu foco nos estudos, os Espiritualistas perdem todas as habilidades que envolvem chutes dos Taekwons.
Habilidades que começam com Es só podem ser usadas em monstros.
Habilidades que começam com Ka só podem ser usadas em si, nos familiares, em outros espiritualistas e suas evoluções.
Habilidades de espírito só podem ser usadas em uma determinada classe e suas evoluções.
Ao atingirem o nível de base 99 e classe 50, podem evoluir para Ceifadores de Almas.', 48), 
('Mestres_Estelares', 'Classe 3 Expandida', 'Dentre os lutadores que alinham o poder do Sol, da Lua e das Estrelas, um Grão-Mestre viajou pelo mundo em busca de ampliar seus conhecimentos para além dos já conhecidos.
Durante sua jornada, o Grão-Mestre conseguiu entender que não existem limitações entre o Sol, a Lua e as Estrelas podendo estender seu poder ao Universo inteiro.
Com isso, ele fundou um centro de treinamento no topo do monte Mjolnir e o batizou de Bosque Meteoro.
Assim, o Grão-Mestre poderá repassar suas descobertas para os Mestres Taekwons interessados nos poderes universais.', 52),
('Ceifadores_de_Almas', 'Classe 3 Expandida', 'Havia uma Espiritualista que queria obter um conhecimento mais aprofundado sobre as Almas, portanto, ela seguiu até Nifflheim, o reino dos mortos.
Durante muitos anos estudando, ela finalmente compreendeu a energia das Almas e conseguiu realizar diversos feitos, como conectar as Almas entre si ou ceifar a Alma de uma pessoa.
Ela se autodenominava Ceifadora de Almas e tentou sair do reino dos mortos para divulgar suas descobertas.
No entanto, depois de ficar muito tempo vagando no mundo morto, ela se tornou dependente da vida após a morte e não teve mais permissão para retornar ao mundo dos vivos.
Então, ela passou anos esperando que os Espiritualistas demonstrassem interesse em se tornar alguém como ela.', 53), 
('Kagerou', 'Classe 3 Expandida', 'Para ocupar novos postos de poder nos exércitos e organizações gaijins, os ninjas precisaram evoluir.
Por isso, eles formaram uma grande Aliança e embarcaram para a outra dimensão, como uma grande prova de progresso.
Com habilidades para encarar uma guerra, os Kagerous se destacam por 3 especialidades: ajudar seus aliados, atrapalhar os inimigos e remover a capacidade de reflexão.', 49), 
('Oboro', 'Classe 3 Expandida', 'Para ocupar novos postos de poder nos exércitos e organizações gaijins, os ninjas precisaram evoluir.
Por isso, eles formaram uma grande Aliança e embarcaram para a outra dimensão, como uma grande prova de progresso.
As Oboros surgiram focadas para as guerras, desestabilizando estratégias de grandes clãs.
Especializam-se em fazer com que habilidades de cura causem dano em seus alvos, prejudicando drasticamente os inimigos que estejam com suporte.', 49), 
('Insurgentes', 'Classe 3 Expandida', 'Da revolução nascem os primeiros justiceiros e após intensas rebeliões na República, alguns rebeldes ganharam notoriedade, tornando-se líderes natos da insurreição.
Com a escolha de seus líderes, os justiceiros puderam se organizar melhor para as próximas batalhas, aperfeiçoando suas técnicas com as armas de fogo e aumentando seu poder bélico.
Daí surgiram os Insurgentes, um grupo armado com mais sofisticação que sua classe anterior - que havia nascido da simples indignação popular.
Agora, ocupando um espaço visível na influência política de Schwartzwald, o maior desafio dos Insurgentes será evitar que se tornem aquilo que eles mais combateram no passado.', 50), 
('Superaprendizes (1)', 'Classe 3 Expandida','Aventureiros e aventureiras que não desejam seguir o caminho das classes comuns, optam por se tornarem Superaprendizes ao atingirem o nível de base 45.
É uma classe extremamente versátil por possuir a grande maioria das habilidades das classes iniciais, possibilitando a magia, o ataque físico, o suporte ou combinando todos os três tipos.
Levam consigo o poder oculto do Anjo da Guarda, fiel protetor e guardião.
Apesar de tantas vantagens, Superaprendizes têm as mesmas fragilidades dos Aprendizes.
Ao atingirem o nível de base 99, podem expandir a classe para ganhar novas habilidades e seguir evoluindo', 51);


INSERT INTO habilidade(nome, fkClasse) VALUES ('Martelo_de_Thor', 28), ('Adrenalina_Pura', 28), ('Amplificar_Poder', 28), ('Força_Violenta', 28), ('Manejo_Perfeito', 28),
('Consertar_Armas', 28), ('Perícia_em_Armamento', 28), ('Punho_Firme', 28), ('Resistência_ao_Fogo', 28), ('Forjar_Espada_de_Duas_Mãos', 28), ('Produzir_Pedra_Fundamental', 28),
('Trabalhar_Ferro', 28),('Trabalhar_Aço', 28), ('Forjar_Machado', 28), ('Forjar_Adaga', 28), ('Forjar_Soqueira', 28), ('Forjar_Maça', 28), ('Forjar_Lança', 28), 
('Encontrar_Minério', 28), ('Perícia_com_Oridecon', 28), ('Venda_Duvidosa', 28), ('Ganância', 28), ('Adrenalina_Concentrada', 28);