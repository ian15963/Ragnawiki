USE ragnawiki;

-- Skills de Aprendiz
INSERT INTO habilidade(nome) VALUES ('Habilidades_Básicas'), ('Primeiros_Socorros'), ('Fingir_de_Morto');

-- Skills de Espadachim
INSERT INTO habilidade(nome) VALUES ('Golpe_Fulminante'), ('Impacto_Explosivo'), ('Aumentar_Recuperação_de_HP'), ('Ataque_Fatal'), ('Perícia_com_Espada'),
('Perícia_com_Espada_de_Duas_Mãos'), ('Provocar'), ('Recuperar_HP_em_Movimento'), ('Vigor'), ('Instinto_de_Sobrevivência');

-- Skills de Mago
INSERT INTO habilidade(nome) VALUES ('Lanças_de_Fogo'), ('Bolas_de_Fogo'), ('Barreira_de_Fogo'), ('Lanças_de_Gelo'), ('Rajada_Congelante'), ('Relâmpago'),
('Tempestade_de_Raios'), ('Ataque_Espiritual'), ('Espíritos_Anciões'), ('Aumentar_Recuperação_de_SP'), ('Chama_Reveladora'), ('Escudo_Mágico'), ('Petrificar');

-- Skills de Gatuno
INSERT INTO habilidade(nome) VALUES ('Ataque_Duplo'), ('Perícia_em_Esquiva'), ('Envenenar'), ('Esconderijo'), ('Furto'), ('Recuar'), ('Procurar_Pedras'),
('Desintoxicar'), ('Chutar_Areia'), ('Arremessar_Pedra');

-- Skills de Mercador
INSERT INTO habilidade(nome) VALUES ('Aumentar_Capacidade_de_Carga'), ('Usar_Carrinho'), ('Cavalo-de-Pau'), ('Comércio'), ('Superfaturar'),('Desconto'), ('Identificar_Item'), ('Mammonita'),
('Decorar_Carrinho'), ('Grito_de_Guerra'), ('Loja_de_Compras'), ('Personalizar_Carrinho');

-- Skills de Noviço
INSERT INTO habilidade(nome) VALUES ('Bênção'), ('Aumentar_Agilidade'), ('Curar'), ('Diminuir_Agilidade'), ('Escudo_Sagrado'), ('Angelus'), ('Aqua_Benedicta'),
('Flagelo_do_Mal'), ('Luz_Divina'), ('Medicar'), ('Portal'), ('Proteção_Divina'), ('Revelação'), ('Signum_Crucis'), ('Teleporte');

-- Skills de Arqueiro			
INSERT INTO habilidade(nome) VALUES ('Rajada_de_Flechas'), ('Chuva_de_Flechas'), ('Disparo_Violento'), ('Olhos_de_Coruja'), ('Concentração'),('Fabricar_Flechas'),
('Olhos_de_Águia');

-- Skills de Cavaleiro
INSERT INTO habilidade(nome) VALUES ('Impacto_de_Tyr'), ('Lança_Bumerangue'), ('Estocada'), ('Contra-Ataque'), ('Brandir_Lança'), ('Avanço_Ofensivo'),
('Montaria'), ('Perfurar'), ('Perícia_com_Lança'), ('Perícia_em_Montaria'), ('Rapidez_com_Duas_Mãos'), ('Rapidez_com_Uma_Mão');

-- Skills de Templário
INSERT INTO habilidade(nome) VALUES ('Crux_Divinum'), ('Crux_Magnum'), ('Bloqueio'), ('Redenção'), ('Aura_Sagrada'),
('Rapidez_com_Lança'), ('Punição_Divina'), ('Escudo_Refletor'), ('Escudo_Bumerangue'), ('Fé'), ('Montaria'), ('Perícia_em_Montaria'),
('Perícia_com_Lança'), ('Flagelo_do_Mal'), ('Proteção_Divina'), ('Curar'), ('Medicar'), ('Divina_Providência'), ('Submissão');

-- Skills de Bruxo
INSERT INTO habilidade(nome) VALUES ('Coluna_de_Pedra'), ('Pântano_dos_Mortos'), ('Fúria_da_Terra'), ('Congelar'), ('Barreira_de_Gelo'),
('Barreira_de_Gelo'), ('Nevasca'), ("Esfera_d'Água"), ('Chuva_de_Meteoros'), ('Supernova'), ('Coluna_de_Fogo'), ('Trovão_de_Júpiter'),
('Ira_de_Thor'), ('Sentido_Sobrenatural'), ('Explosão_Protetora');

-- Skills de Sábio
INSERT INTO habilidade(nome) VALUES ('Desejo_Arcano'), ('Abracadabra'), ('Furacão'), ('Vulcão'), ('Dilúvio'), ('Sentido_Sobrenatural'), ('Encantar_com_Chama'),
('Encantar_com_Geada'), ('Encantar_com_Ventania'), ('Encantar_com_Terremoto'), ('Conjuração_Livre'), ('Estudo_de_Livros'), ('Dragonologia'), ('Coluna_de_Pedra'),
('Fúria_da_Terra'), ('Espelho_Mágico'), ('Desconcentrar'), ('Cancelar_Magia'), ('Desencantar'), ('Proteger_Terreno'), ('Criar_Conversor_Elemental'),
('Mudança_Elemental');

-- Skills de Mercenário
INSERT INTO habilidade(nome) VALUES ('Perícia_com_Katar'), ('Perícia_com_Mão_Esquerda'), ('Perícia_com_Mão_Direita'), ('Lâminas_Destruidoras'), ('Tocaia'), ('Furtividade'), ('Envenenar_Arma'),
('Refletir_Veneno'), ('Névoa_Tóxica'), ('Explosão_Tóxica'), ('Faca_Envenenada'), ('Lâminas_Aceleradas');

-- Skills de Arruaceiro
INSERT INTO habilidade(nome) VALUES ('Apunhalar'), ('Ataque_Surpresa'), ('Rapto'), ('Afanar'), ('Plágio'), ('Remover_Armadura'), ('Remover_Capacete'), ('Remover_Escudo'),
('Remover_Arma'), ('Remover_Armadilha'), ('Rajada_de_Flechas'), ('Olhos_de_Águia'), ('Perícia_com_Espada'), ('Faxina'), ('Pichar'), ('Graffitti'), ('Túnel_de_Fuga'),
('Mãos_Leves'), ('Extorquir'), ('Malandragem'), ('Confinamento');

-- Skills de Ferreiro
INSERT INTO habilidade(nome) VALUES ('Martelo_de_Thor'), ('Adrenalina_Pura'), ('Amplificar_Poder'), ('Força_Violenta'), ('Manejo_Perfeito'),
('Consertar_Armas'), ('Perícia_em_Armamento'), ('Punho_Firme'), ('Resistência_ao_Fogo'), ('Forjar_Espada_de_Duas_Mãos'), ('Produzir_Pedra_Fundamental'),
('Trabalhar_Ferro'),('Trabalhar_Aço'), ('Forjar_Machado'), ('Forjar_Adaga'), ('Forjar_Soqueira'), ('Forjar_Maça'), ('Forjar_Lança'), 
('Encontrar_Minério'), ('Perícia_com_Oridecon'), ('Venda_Duvidosa'), ('Ganância'), ('Adrenalina_Concentrada');

-- Skills de Alquimistas
INSERT INTO habilidade(nome) VALUES ('Preparar_Poção'),('Fogo_Grego'), ('Terror_Ácido'), ('Criar_Monstro_Planta'), ('Criar_Esfera_Marinha'), ('Vaporizar'),
('Criar_Homunculus'), ('Ressuscitar_Homunculus'), ('Pesquisa_de_Poções'), ('Arremessar_Poção'), ('Revestir_Capacete'), ('Revestir_Arma'), ('Revestir_Armadura'),
('Revestir_Escudo'), ('Perícia_com_Machado_e_Espada'), ('Bioética'), ('Criação_Espiritual_de_Poções_I'), ('Criação_Espiritual_de_Poções_II'), ('Criação_Espiritual_de_Poções_III'),
('Arremessar_Poção_da_Fúria_Selvagem');

-- Skills de Sacerdote
INSERT INTO habilidade(nome) VALUES ('Aumentar_Recuperação_de_SP'), ('Perícia_com_Maça'), ('Kyrie_Eleison'), ('Glória'), ('Magnificat'), ('Impositio_Manus'), ('Suffragium'),
('Aspersio'), ('Benedictio_Sanctissimi_Sacramenti'),('Magnus_Exorcismus'), ('Lex_Divina'), ('Esconjurar'), ('Lex_Aeterna'), ('Graça_Divina'), ('Retardar_Veneno'), ('Ressuscitar'),
('Escudo_Mágico'), ('Santuário'), ('Martírio');

-- Skills de Monge
INSERT INTO habilidade(nome) VALUES ('Punhos_de_Ferro'), ('Cair_das_Pétalas'), ('Meditação'), ('Combo_Triplo'), ('Combo_Quádruplo'),('O_Último_Dragão'), ('Fúria_Interior'),
('Punho_Supremo_de_Asura'), ('Impacto_Psíquico'), ('Dilema'), ('Passo_Etéreo'), ('Absorver_Esferas_Espirituais'), ('Invocar_Esfera_Espiritual'), ('Disparo_de_Esferas_Espirituais'),
('Corpo_Fechado'), ('Concessão_Espiritual'), ('Punhos_Intensos');

-- Skills de Caçador
INSERT INTO habilidade(nome) VALUES ('Armadilha_Atordoante'), ('Armadilha_Congelante'), ('Instalar_Mina'), ('Armadilha_Explosiva'), ('Armadilha_Escorregadia'), ('Instalar_Armadilha'), ('Armadilha_Luminosa'),
('Armadilha_Extenuante'), ('Armadilha_Sonífera'), ('Ataque_Aéreo'), ('Adestrar_Ave'), ('Garras_de_Aço'), ('Flagelo_das_Feras'), ('Alerta'), ('Remover_Armadilha'), ('Desativar_Armadilha'),
('Mensagem_Secreta'), ('Flecha_Fantasma'), ('Ataque_da_Fera');

-- Skills de Bardo
INSERT INTO habilidade(nome) VALUES ('Lições_de_Música'), ('Piada_Infame'), ('Flecha_Melódica'), ('Dissonância'), ('Poema_de_Bragi'), ('Crepúsculo_Sangrento'), ('Maçãs_de_Idun'), ('Assovio'),
('Bis'), ('Ode_a_Siegfried'), ('Banquete_de_Njord'), ('Rufar_dos_Tambores'), ('Anel_dos_Nibelungos'), ('Ritmo_Caótico'), ('Lamento_de_Loki'), ('Canção_Preciosa'), ('Cantiga_de_Ninar'), ('Encerramento'),
('Voz_Dolorosa');

-- Skills de Odalisca
INSERT INTO habilidade(nome) VALUES ('Lições_de_Dança'), ('Escândalo'), ('Estilingue'), ('Dança_do_Ventre'), ('Não_me_Abandones'), ('Dança_Cigana'), ('Beijo_da_Sorte'), ('Sibilo'), ('Piscadela');


-- Skills de Lordes
INSERT INTO habilidade(nome) VALUES  ('Aparar_Golpe'), ('Ataque_Vital'), ('Frenesi'), ('Dedicação'), ('Golpe_Traumático'),
('Lâmina_de_Aura'), ('Perfurar_em_Espiral'), ('Relaxar'); 

-- Skills de Paladino
INSERT INTO habilidade(nome) VALUES ('Choque_Rápido'), ('Gloria_Domini'), ('Canto_de_Batalha'), ('Sacrifício_do_Mártir');

-- Skills de Arquimagos
INSERT INTO habilidade(nome) VALUES ('Ganbantein'), ('Campo_Gravitacional'), ('Amplificação_Mística'), ('Vulcão_Napalm'), ('Dreno_de_Alma'), ('Esmagamento_Mágico');

-- Skills de Professor
INSERT INTO habilidade(nome) VALUES ('Lanças_Duplas'), ('Bruma_Ofuscante'), ('Prisão_de_Teia'), ('Presciência'), ('Indulgir'), ('Exalar_Alma'), ('Enlouquecedor'), ('Sifão_de_Alma');

-- Skills de Algoz
INSERT INTO habilidade(nome) VALUES ('Perícia_com_Katar_Avançada'), ('Criar_Veneno_Mortal'), ('Encantar_com_Veneno_Mortal'), ('Impacto_Meteoro'), ('Destruidor_de_Almas');

-- Skills de Desordeiro
INSERT INTO habilidade(nome) VALUES ('Espreitar'), ('Instinto_de_Defesa'), ('Preservar'), ('Remoção_Total');

-- Skills de Mestre-Ferreiro
INSERT INTO habilidade(nome) VALUES ('Choque_do_Carrinho'), ('Impulso_no_Carrinho'), ('Golpe_Estilhaçante'), ('Força_Violentíssima'), ('Aprimorar_Armamento');

-- Skills de Criador
INSERT INTO habilidade(nome) VALUES ('Bomba_Ácida'), ('Arremessar_Poção_Compacta'), ('Proteção_Química_Total'), ('Cultivar_Planta');

-- Skills de Sumo-Sacerdote
INSERT INTO habilidade(nome) VALUES ('Assumptio'), ('Meditatio'), ('Riqueza_de_Espírito'), ('Basílica');

-- Skills de Mestre
INSERT INTO habilidade(nome) VALUES ('Zen'), ('Punho_do_Tigre'), ('Combo_Esmagador'), ('Golpe_da_Palma_em_Fúria');

-- Skills de Atiradores de elite
INSERT INTO habilidade(nome) VALUES ('Tiro_Preciso'), ('Assalto_do_Falcão'), ('Visão_Real'), ('Caminho_do_Vento');

-- Skills de Menestrel e Cigana
INSERT INTO habilidade(nome) VALUES ('Vulcão_de_Flechas'), ('Bênção_Protetora'), ('Controle_de_Marionete'), ('Destino_nas_Cartas'), ('Bastão_de_Hermod'), ('Grito_de_Liberdade');

-- Skills de Cavaleiro Rúnico
INSERT INTO habilidade(nome) VALUES ('Adestrar_Dragão'),('Bafo_do_Dragão'), ('Sopro_do_Dragão'), ('Rugido_do_Dragão'),('Revidar_Dano'), ('Encantar_Lâmina'), ('Impacto_Flamejante'),
('Arpão'), ('Onda_de_Choque'), ('Vento_Cortante'), ('Lança_das_Mil_Pontas'), ('Perícia_em_Runas'), ('Escamas_Rochosas'), ('Escudos_Milenares'), ('Explosão_Rúnica'), ('Força_Titânica'),
('Golpe_Titânico'), ('Purificação'), ('Regeneração_Espiritual'), ('Vitalidade_Rúnica'), ('Luz_da_Alma'), ('Aura_de_Combate'), ('Maximizar_Poder');

-- Skills de Guardião Real
INSERT INTO habilidade(nome) VALUES ('Toque_do_Oblívio'), ('Disparo_Perfurante'), ('Lança_do_Destino'), ('Espiral_Lunar'),('Excender_Limite'), ('Trindade'), ('Estocada_Precisa'), ('Prestígio_Divino'),
('Consagração'), ('Reflexão_Amplificada'), ('Luz_da_Criação'), ('Aegis_Domini'), ('Aegis_Inferi'), ('Escudo_Compressor'), ('Graça_Real'), ('Proteção_da_Vanguarda'), ('Retribuição_da_Vanguarda'),
('Devoção'), ('Formação_Real'),('Pisotear_Armadilha');

-- Skills de Arcano
INSERT INTO habilidade(nome) VALUES ('Maestria_Arcana'), ('Radius'), ('Telecinesia'), ('Estudo_Arcano'), ('Estudo_Arcano_Avançado'), ('Stasis'), ('Disparo_Arcano'), ('Invocar_Esfera_de_Fogo'), ('Invocar_Esfera_de_Água'),
('Invocar_Esfera_de_Vento'), ('Invocar_Esfera_de_Terra'), ('Tetra_Vortex'), ('Zero_Absoluto'), ('Esquife_de_Gelo'), ('Chamas_de_Hela'), ('Meteoro_Escarlate'), ('Abalo_Sísmico'), ('Impacto_Espiritual'),
('Corrente_Elétrica'), ('Pântano_de_Nifflheim'), ('Fúria_da_Medusa'), ('Exílio'), ('Cometa'), ('Drenar_Vida');


-- Skills de Feiticeiro
INSERT INTO habilidade(nome) VALUES ('Onda_Psíquica'), ('Pó_de_Diamante'), ('Lanças_dos_Aesir'), ('Castigo_de_Nerthus'), ('Maldição_de_Jormungand'), ('Implosão_Tóxica'), ('Encanto_de_Órion'), ('Punho_Arcano'),
('Passos_de_Salamandra'), ('Passos_de_Sílfide'), ('Aquecer_Terreno'), ('Tornado'), ('Onda_Hipnótica'), ('Escudo_Elemental'), ('Invocar_Agni'), ('Invocar_Varuna'), ('Invocar_Vayu'), ('Invocar_Chandra'),
('Insígnia_do_Fogo'), ('Insígnia_da_Água'), ('Insígnia_do_Vento'), ('Insígnia_da_Terra'), ('Empatia_Elemental'), ('Incitar_Elemental'), ('Domínio_Elemental'), ('Análise_Elemental'),
('Troca_Espiritual');

-- Skills de Sicário
INSERT INTO habilidade(nome) VALUES ('Pesquisa_de_Toxinas'), ('Criar_Toxina'), ('Antídoto'), ('Aplicar_Toxina'), ('Intoxicar'), ('Potencializar_Veneno'), ('Nevoeiro_Tóxico'), ('Ocultação'),
('Passos_da_Ilusão'), ('Lâminas_de_Loki'), ('Castigo_de_Loki'), ('Reflexo_de_Combate'), ('Estilhaçar_Arma'), ('Retaliação'), ('Passo_Sombrio'), ('Ameaça_Fantasma'), ('Lâminas_Retalhadoras'), ('Garra_Sombria');

-- Skills de Renegado
INSERT INTO habilidade(nome) VALUES ('Ofensiva_Fatal'), ('Desejo_das_Sombras'), ('Mimetismo'), ('Forma_Etérea'), ('Vínculo_Sombrio'), ('Borrifar_Tinta'), ('Pestilência'), ('Porta_Dimensional'), ('Remover_Acessório'),
('Redemoinho_de_Absorção'), ('Pintar_Armadilha'), ('Disparo_Triplo'), ('Escapar'), ('Cópia_Explosiva'), ('Sede_de_Sangue'), ('Símbolo_do_Caos'), ('Máscara_da_Fraqueza'), ('Máscara_da_Melancolia'),
('Máscara_da_Tolice'),('Máscara_da_Ociosidade'), ('Máscara_da_Vulnerabilidade'), ('Máscara_do_Infortúnio');

-- Skills de Mecânico
INSERT INTO habilidade(nome) VALUES ('Fúria_do_Furacão'), ('Arremesso_de_Machado'), ('Brandir_Machado'), ('Erupção_de_Magma'), ('Maestria_com_Machados'), ('Sabedoria_de_Hefesto'), ('Artilharia_Caçadora'),
('Artilharia_Arcana'), ('Remover_Artilharia'), ('Licença_de_Pilotagem'), ('Reforçar_Estrutura'), ('Aceleração'), ('Reparar'), ('Propulsão_Dianteira'), ('Propulsão_Traseira'), ('Canhão'), ('Metralhadora'), ('Punho_Foguete'),
('Lança_Chamas'), ('Gás_Criogênico'), ('Bate_Estaca'), ('Autodestruição'), ('Campo_Magnético'), ('Campo_Protetor'), ('Reconfigurar_Elemento'), ('Sensor_Infravermelho'), ('Analisar'), ('Campo_de_Invisibilidade'),
('Resfriamento'), ('Planar');

-- Skills de Bioquímico
INSERT INTO habilidade(nome) VALUES ('Propulsão_do_Carrinho'), ('Canhão_de_Prótons'), ('Tornado_de_Carrinho'), ('Aprimorar_Carrinho'), ('Armadilha_de_Espinhos'), ('Muralha_de_Espinhos'), ('Planta_Infernal'),
('Planta_Sanguessuga'), ('Bomba_Napalm'), ('Catalisador_Alquímico'), ('Farmacologia_Avançada'), ('Reação_Alquímica'), ('Culinária_Avançada'), ('Criar_Bomba_Orgânica'), ('Grito_da_Mandrágora'), ('Perícia_em_Esgrima'),
('Alucinógeno'), ('Erva_Daninha'), ('Esporo_Explosivo'), ('Arremessar_Item');

-- Skills de Arcebispo
INSERT INTO habilidade(nome) VALUES ('Sopro_Divino'), ('Clementia'), ('Canto_Candidus'), ('Praefatio'), ('Renovatio'), ('Curatio'), ('Offertorium'), ('Lauda_Agnus'), ('Lauda_Ramus'), ('Silentium'), ('Gênese'),
('Adoramus'), ('Judex'), ('Gemini_Lumen'), ('Oratio'), ('Sacramentum'), ('Expiatio'), ('Criar_Ancilla'), ('Epiclesis'), ('Vituperatum'), ('Convenio');

-- Skills de Shuras
INSERT INTO habilidade(nome) VALUES ('Combo_Rápido'), ('Cotovelada_Ascendente'), ('Campo_Amaldiçoado'), ('Punho_do_Dragão'), ('Impacto_Sísmico'), ('Ruína'), ('Chakra_da_Fúria'), ('Chakra_da_Cura'),
('Chakra_do_Vigor'), ('Chakra_da_Energia'), ('Chakra_do_Silêncio'), ('Portões_do_Inferno'), ('Salto_Relâmpago'), ('Tempestade_Espiritual'), ('Rugido_do_Leão'), ('Pancada_Corporal'), ('Renúncia_Espiritual'),
('Absorção_Espiritual'), ('Explosão_Espiritual'), ('Dragão_Ascendente'), ('Soco_Furacão'), ('Garra_de_Tigre'), ('Chute_Rasteiro');

-- Skills de Sentinelas
INSERT INTO habilidade(nome) VALUES ('Táticas_de_Sobrevivência'), ('Camuflagem'), ('Disparo_Certeiro'), ('Tempestade_de_Flechas'), ('Disparo_Selvagem'), ('Ilimitar'), ('Perícia_com_Armadilha'), ('Detonador'),
('Bomba_Relógio'), ('Armadilha_Energizada'), ('Armadilha_Incendiária'), ('Armadilha_Glacial'), ('Adestrar_Worg'), ('Montaria_em_Worg'), ('Presas_Afiadas'), ('Faro_Aguçado'), ('Assalto_de_Worg'), ('Mordida_Feroz'),
('Investida_de_Worg'), ('Armadilha_Escarlate'), ('Armadilha_Ocre'), ('Armadilha_Cobalto'), ('Armadilha_Esmeralda');

-- Skills de Trovador e Musas
INSERT INTO habilidade(nome) VALUES ('Temporal_de_Flechas'), ('Ruído_Estridente'), ('Ressonância'), ('Ativar_Ressonância'), ('Melodia_de_Morfeu'), ('Sibilo_de_Eir'), ('Ode_a_Hela'), ('Réquiem_de_Nifflheim'), ('Canto_da_Sereia'),
('Improviso'), ('Brado_de_Odin'), ('Orvalho_de_Idun'), ('Canção_de_Alfheim'), ('Murmúrio_Perene'),('Dança_com_Lobos'), ('Cântico_da_Iluminação'), ('Clamor_de_Batalha'), ('Prelúdio_do_Ragnarök'),
('Embalos_de_Sábado_a_Noite'), ('Domínio_Musical'), ('Canção_de_Frigga'), ('Harmonizar'), ('Sinfonia_dos_Ventos'), ('Canção_de_Balder');

-- Skills de Musas
INSERT INTO habilidade(nome) VALUES ('Ritmo_Contagiante'), ('Balada_Sinfônica'), ('Serenata_ao_Luar');

-- Skills de Doram
INSERT INTO habilidade(nome) VALUES ('Instintos_Básicos'), ('Mordida'), ('Pulo_do_Gato'), ('Gato-Mia'), ('Invocar'), ('Quatro_Patas'), ('Arranhar'), ('Ampliar_Alcance'), ('Camarão_Fresquinho'), ('Chuva_de_Mariscos'),
('Dádiva_do_Atum'), ('Proteção_da_Orla'), ('Poder_das_Marés'), ('Lambida'), ('Banho_de_Lambidas'), ('Festa_do_Camarão'), ('Invocação_das_Marés'), ('Lança_Gateira'), ('Hera_Venenosa'),
('Meteoros_de_Nepeta'), ('Pulverizar'), ('Poder_da_Selva'), ('Despertar'), ('Balaio_de_Gato'), ('Mato_de_Gato'), ('Invocação_da_Selva'), ('Chilique_de_Picky'), ('Impulso_de_Arclouse'),
('Ferida_de_Tarou'), ('Cometas_Lunáticos'), ('Poder_da_Fauna'), ('Riscar_Fósforo'), ('Intimidar'), ('Ataque_Selvagem'), ('Invocação_da_Fauna');

-- Skills de SuperAprendizes (São de várias classes)

-- Skills de Justiceiro
INSERT INTO habilidade(nome) VALUES ('Cara_ou_Coroa'), ('Atirar_Moedas'), ('Bala_Mágica'), ('Tiro_Bombinha'), ('Ataque_Triplo'), ('Ataque_Certeiro'), ('Aumentar_Precisão'), ('Resistência_Final'),
('Pânico_do_Justiceiro'), ('Reação_em_Cadeia'), ('Ataque_Concentrado'), ('Rajada_Certeira'), ('Desperado'), ('Ataque_Gatling'), ('Rastrear_o_Alvo'), ('Desarmar'), ('Ferir_Alvo'), ('Controle_de_Multidão'),
('Ataque_Total'), ('Disparo_Espalhado'), ('Mina_do_Justiceiro'), ('Olhos_de_Serpente');

-- Skills de Insurgente
INSERT INTO habilidade(nome) VALUES ('Farta_Fortuna'), ('Furor'), ('Proteção_de_Platina'), ('Ignição'), ('Armadilha_Aderente'), ('Marcar_em_Brasa'), ('Saque_Rápido'), ('Reação_Ilimitada'), ('Salto_Etéreo'),
('Descarregar_Tambor'), ('Tiro_Neutralizante'), ('Rajada_Estilhaçante'), ('Calibre_Letal'), ('Lançar_Míssil'), ('Arremessar_Granada'), ('Espiral_Perfurante'), ('Explosão_Antimatéria'), ('Execução'),
('Disparo_Labareda'), ('Expurgar');

-- Skills de Ninja
INSERT INTO habilidade(nome) VALUES ('Pétalas_Flamejantes'), ('Escudo_de_Chamas'), ('Dragão_Explosivo'), ('Aura_Ninja'), ('Perícia_Ninja'), ('Imagem_Falsa'), ('Troca_de_Pele'), ('Ataque_Mortal'), ('Lança_Congelante'), ('Evasão_Aquática'), ('Grande_Floco_de_Neve'), ('Arremessar_Shuriken'),
('Arremessar_Kunai'), ('Arremessar_Shuriken_Huuma'), ('Chuva_de_Moedas'), ('Virar_Tatami'), ('Lâmina_de_Vento'), ('Descarga_Elétrica'), ('Brisa_Cortante'), ('Corte_das_Sombras'), ('Salto_das_Sombras'), ('Corte_da_Névoa'), ('Prática_de_Arremesso_de_Shuriken');


-- Skills de Oboro e Kagerou
INSERT INTO habilidade(nome) VALUES ('Assalto_das_Sombras'), ('Chamado_da_Morte'), ('Clone_das_Sombras'), ('Substituição'), ('Voragem_Espiritual'), ('Amuleto_Espiritual_de_Água'), ('Amuleto_Espiritual_de_Fogo'),
('Amuleto_Espiritual_de_Terra'), ('Amuleto_Espiritual_de_Vento'), ('Arremessar_Amuleto_Espiritual'), ('Estrepes'), ('Kunai_Explosiva'),('Turbilhão_de_Kunais'), ('Turbilhão_de_Pétalas'), ('Impacto_Cruzado'),
('Corte_Espiritual'), ('Explosão_de_Moedas'), ('Purificação_da_Alma'), ('Inspiração'), ('Refúgio_das_Sombras'), ('Perícia_com_a_Mão_Direita'), ('Perícia_com_a_Mão_Esquerda');

-- Skills de Oboro
INSERT INTO habilidade(nome) VALUES ('Luar_Sinistro'), ('Ilusão_do_Luar'), ('Distorção_Crescente');

-- Skills de Kagerou
INSERT INTO habilidade(nome) VALUES ('Contrato_das_Sombras'), ('Esmagamento_Sombrio'), ('Vazio_das_Sombras');

-- Skills de Taekwon
INSERT INTO habilidade(nome) VALUES ('Postura_do_Tornado'), ('Postura_da_Patada_Voadora'), ('Postura_da_Rasteira'), ('Postura_do_Contrachute'), ('Corrida'), ('Salto'), ('Kihop'), ('Trégua_Rápida'), ('Retiro_Rápido'),
('Chute_do_Tornado'), ('Patada_Voadora'), ('Rasteira'), ('Contrachute'), ('Chute_Aéreo'), ('Cambalhota'), ('Brisa_Leve'), ('Missão_Taekwon');

-- Skills de Mestre Taekwon
INSERT INTO habilidade(nome) VALUES ('Oposição_Solar,_Lunar_e_Estelar'), ('Percepção_Solar,_Lunar_e_Estelar'), ('Auxílio_Solar,_Lunar_e_Estelar'), ('Sombra_Solar,_Lunar_e_Estelar'), ('Transmissão_Solar,_Lunar_e_Estelar'),
('União_Solar,_Lunar_e_Estelar'), ('Milagre_Solar,_Lunar_e_Estelar'), ('Fúria_Solar'), ('Fúria_Lunar'), ('Fúria_Estelar'), ('Proteção_Solar'), ('Proteção_Lunar'), ('Proteção_Estelar'), ('Calor_Solar'), ('Calor_Lunar'),
('Calor_Estelar'), ('Bênção_Solar'), ('Bênção_Lunar'), ('Bênção_Estelar');

-- Skills de Espiritualista
INSERT INTO habilidade(nome) VALUES ('Espírito_do_Alquimista'), ('Espírito_do_Arruaceiro'), ('Espírito_dos_Artistas'), ('Espírito_do_Bruxo'), ('Espírito_do_Caçador'), ('Espírito_do_Cavaleiro'), ('Espírito_do_Espiritualista'),
('Espírito_do_Ferreiro'), ('Espírito_do_Mercenário'), ('Espírito_do_Mestre_Taekwon'), ('Espírito_do_Monge'), ('Espírito_do_Sábio'), ('Espírito_do_Sacerdote'), ('Espírito_do_Superaprendiz'), ('Espírito_do_Templário'), 
('Espírito_dos_Transcendentais'), ('Esma'), ('Estin'), ('Estun'), ('Eska'), ('Eske'), ('Eswoo'), ('Kaina'), ('Kaahi'), ('Kaite'), ('Kaizel'), ('Kaupe');

-- Skills de Mestre Estelar
INSERT INTO habilidade(nome) VALUES ('Postura_Solar'), ('Postura_Lunar'), ('Chute_Solar'), ('Chute_Lunar'), ('Eclipse_Lunar'), ('Explosão_Solar'), ('Luz_Solar'), ('Postura_do_Universo'), ('Livro_da_Criação'), ('Livro_das_Dimensões'),
('Advento_Imperial'), ('Controle_Gravitacional'), ('Hipernova'), ('Luz_Lunar'), ('Postura_Estelar'), ('Chute_Estelar'), ('Chuva_Estelar'), ('Luz_Estelar'), ('Registro_Solar,_Lunar_e_Estelar'), ('Purificação_Solar,_Lunar_e_Estelar');

-- Skills de Ceifador
INSERT INTO habilidade(nome) VALUES ('Ceifar_Alma'), ('Coletar_Alma'), ('Perícia_com_Almas'), ('Divisão_de_Alma'), ('Absorver_Espírito'), ('Espírito_da_Fada'), ('Espírito_das_Sombras'), ('Espírito_do_Falcão'), ('Espírito_do_Golem'), ('Necromancia'),
('Necroexplosão'), ('Esha'), ('Espa'), ('Eswhoo'), ('Kaute'), ('Sifão_Espiritual'), ('União_Espiritual');

SELECT idHabilidade FROM habilidade WHERE nome = 'Bis';
SELECT idClasse FROM classe WHERE nome = "Aprendizes";
truncate table classe_habilidade;
INSERT INTO classe_habilidade VALUES 
-- Skills de Aprendiz
(1,1), (1,2), (1,3), 
-- Skills de Doram
(2,639),(2,640),(2,641),(2,642),(2,643),(2,644),(2,645),(2,646),(2,647),(2,648),(2,649),(2,650),(2,651),(2,652),(2,653),(2,654),(2,655),(2,656),(2,657),(2,658),(2,659),(2,660),(2,661),
(2,662),(2,663),(2,664),(2,665),(2,666),(2,667),(2,668),(2,669),(2,670),(2,671),(2,672),(2,673),
-- Skills de Espadachim
(3,4), (3,5), (3,6), (3,7), (3,8), (3,9), (3,10), (3,11), (3,12), (3,13), 
-- Skills de Mago
(4, 14), (4, 15), (4,16),(4,17),(4,18),(4,19), (4,20), (4,21),(4,22),(4,23),(4,24),(4,25),(4,26),
-- Skills de Gatuno
(5,27),(5,28),(5,29),(5,30),(5,31),(5,32),(5,33),(5,34),(5,35),(5,36), 
-- Skills de Mercador
(6,37), (6,38), (6,39), (6,40), (6,41),(6,42), (6,43), (6,44), (6,45), (6,46), (6,47), (6,48),
-- Skills de Noviço
(7,49), (7,50), (7,51),(7,52),(7,53),(7,54),(7,55),(7,56),(7,57),(7,58),(7,59),(7,60),(7,61),(7,62),(7,63),
-- Skills de Arqueiro
(8,64),(8,65),(8,66),(8,67),(8,68),(8,69),(8,70),
-- Skills de Cavaleiro
(9,71), (9,72), (9,73),(9,74),(9,75),(9,76),(9,77),(9,78),(9,79),(9,80),(9,81),(9,82),
-- Skills de Templário
(10,83),(10,84),(10,85),(10,86),(10,87),(10,88),(10,89),(10,90),(10,91),(10,92),(10,93),(10,94),(10,95),(10,96),(10,97),(10,98),(10,99),(10,100),(10,101),
-- Skills de Bruxo
(11,102),(11,103),(11,104),(11,105),(11,106),(11,107),(11,108),(11,109),(11,110),(11,111),(11,112),(11,113),(11,114),(11,115),(11,116),
-- Skills de Sábio
(12,117),(12,118),(12,119),(12,120),(12,121),(12,122),(12,123),(12,124),(12,125),(12,126),(12,127),(12,128),(12,129),(12,130),(12,131),(12,132),(12,133),(12,134),(12,135),(12,136),(12,137),(12,138),
-- Skills de Mercenário
(13,139),(13,140),(13,141),(13,142),(13,143),(13,144),(13,145),(13,146),(13,147),(13,148),(13,149),(13,150),
-- Skills de Arruaceiro
(14,151),(14,152),(14,153),(14,154),(14,155),(14,156),(14,157),(14,158),(14,159),(14,160),(14,161),(14,162),(14,163),(14,164),(14,165),(14,166),(14,167),(14,168),(14,169),(14,170),(14,171),
-- Skills Ferreiro
(15,172),(15,173),(15,174),(15,175),(15,176),(15,177),(15,178),(15,179),(15,180),(15,181),(15,182),(15,183),(15,184),(15,185),(15,186),(15,187),(15,188),(15,189),(15,190),(15,191),(15,192),(15,193),(15,194),
-- Skills de Alquimistas
(16,195),(16,196),(16,197),(16,198),(16,199),(16,200),(16,201),(16,202),(16,203),(16,204),(16,205),(16,206),(16,207),(16,208),(16,209),(16,210),(16,211),(16,212),(16,213),(16,214),
-- Skills de Sacerdote
(18,215),(18, 216), (18,217),(18,218),(18,219),(18,220),(18,221),(18,222),(18,223),(18,224),(18,225),(18,226),(18,227),(18,228),(18,229),(18,230),(18,231),(18,232),(18,233),
-- Skills de Monge
(17,234),(17,235),(17,236),(17,237),(17,238),(17,239),(17,240),(17,241),(17,242),(17,243),(17,244),(17,245),(17,246),(17,247),(17,248),(17,249),(17,250),
-- Skills de Caçador
(19,251),(19,252),(19,253),(19,254),(19,255),(19,256),(19,257),(19,258),(19,259),(19,260),(19,261),(19,262),(19,263),(19,264),(19,265),(19,266),(19,267),(19,268),(19,269),
-- Skills de Bardo
(20,270),(20,271),(20,272),(20,273),(20,274),(20,275),(20,276),(20,277),(20,278),(20,279),(20,280),(20,281),(20,282),(20,283),(20,284),(20,285),(20,286),(20,287),(20,288),
-- Skills de Odalicas
(21,279),(21,280),(21,281),(21,282),(21,283),(21,284),(21,285),(21,286),(21,287),(21,288),(21,289),(21,290),(21,291),(21,292),(21,293),(21,294),(21,295),(21,296),(21,297),
-- Skills de Lorde
(22,71), (22,72), (22,73),(22,74),(22,75),(22,76),(22,77),(22,78),(22,79),(22,80),(22,81),(22,82),(22,298),(22,299),(22,300),(22,301),(22,302),(22,303),(22,304),(22,305),
-- Skills de Paladino
(23,83),(23,84),(23,85),(23,86),(23,87),(23,88),(23,89),(23,90),(23,91),(23,92),(23,93),(23,94),(23,95),(23,96),(23,97),(23,98),(23,99),(23,100),(23,101),(23,306),(23,307),(23,308),(23,309),
-- Skills de Arquimago
(24,102),(24,103),(24,104),(24,105),(24,106),(24,107),(24,108),(24,109),(24,110),(24,111),(24,112),(24,113),(24,114),(24,115),(24,116),(24,310),(24,311),(24,312),(24,313),(24,314),(24,315),
-- Skills de Professor
(25,117),(25,118),(25,119),(25,120),(25,121),(25,122),(25,123),(25,124),(25,125),(25,126),(25,127),(25,128),(25,129),(25,130),(25,131),(25,132),(25,133),(25,134),(25,135),(25,136),
(25,137),(25,138),(25,316),(25,317),(25,318),(25,319),(25,320),(25,321),(25,322),(25,323),
-- Skills de Algoz
(25,139),(26,140),(26,141),(26,142),(26,143),(26,144),(26,145),(26,146),(26,147),(26,148),(26,149),(26,150),(26,324),(26, 325),(26,326),(26,327),(26,328),
-- Skills de Desordeiro
(27,151),(27,152),(27,153),(27,154),(27,155),(27,156),(27,157),(27,158),(27,159),(27,160),(27,161),(27,162),(27,163),(27,164),(27,165),(27,166),(27,167),(27,168),(27,169),(27,170),(27,171),
(27,172),(27,329),(27,330),(27,331),(27,332),
-- Skills de Mestre-Ferreiro
(28,173),(28,174),(28,175),(28,176),(28,177),(28,178),(28,179),(28,180),(28,181),(28,182),(28,183),(28,184),(28,185),(28,186),(28,187),(28,188),(28,189),(28,190),(28,191),(28,192),
(28,193),(28,194),(28,195),(28,333),(28,334),(28,335),(28,336),(28,337),
-- Skills de Criador
(29,196),(29,197),(29,198),(29,199),(29,200),(29,201),(29,202),(29,203),(29,204),(29,205),(29,206),(29,207),(29,208),(29,209),(29,210),(29,211),(29,212),(29,213),(29,214),(29,215),
(29,338),(29,339),(29,340),(29,341),
-- Skills de Sumo-Sacerdote
(31, 216), (31,217),(31,218),(31,219),(31,220),(31,221),(31,222),(31,223),(31,224),(31,225),(31,226),(31,227),(31,228),(31,229),(31,230),(31,231),(31,232),(31,233),(31,234),(31,342),(31,343),
(31,344),(31,345),
-- Skills de Mestre
(30,235),(30,236),(30,237),(30,238),(30,239),(30,240),(30,241),(30,242),(30,243),(30,244),(30,245),(30,246),(30,247),(30,248),(30,249),(30,250),(30,251),(30,346),(30,347),(30,348),(30,349),
-- Skills de Atirador de Elite
(32,252),(32,253),(32,254),(32,255),(32,256),(32,257),(32,258),(32,259),(32,260),(32,261),(32,262),(32,263),(32,264),(32,265),(32,266),(32,267),(32,268),(32,269),(32,350),(32,351),(32,352),
(32,353),
-- Skills de Menestrel
(32,270),(33,271),(33,272),(33,273),(33,274),(33,275),(33,276),(33,277),(33,278),(33,279),(33,280),(33,281),(33,282),(33,283),(33,284),(33,285),(33,286),(33,287),(33,288),(33,354),(33,355),(33,356),
(33,357),(33,358),(33,359),
-- Skills de Cigana
(34,279),(34,280),(34,281),(34,282),(34,283),(34,284),(34,285),(34,286),(34,287),(34,288),(34,289),(34,290),(34,291),(34,292),(34,293),(34,294),(34,295),(34,296),(34,297),(34,355),(34,356),
(34,357),(34,358),(34,359),
-- Skills de Cavaleiro Rúnico
(35,360),(35,361),(35,362),(35,363),(35,364),(35,365),(35,366),(35,367),(35,368),(35,369),(35,370),(35,371),(35,372),(35,373),(35,374),(35,375),(35,376),(35,377),(35,378),(35,379),(35,380),(35,381),
(35,382),
-- Skills de Guardião Real
(36,383),(36,384),(36,385),(36,386),(36,387),(36,388),(36,389),(36,390),(36,391),(36,392),(36,393),(36,394),(36,395),(36,396),(36,397),(36,398),(36,399),(36,400),(36,401),(36,402),
-- Skills de Arcano
(37,403),(37,404),(37,405),(37,406),(37,407),(37,408),(37,409),(37,410),(37,411),(37,412),(37,413),(37,414),(37,415),(37,416),(37,417),(37,418),(37,419),(37,420),(37,421),(37,422),(37,423),
(37,424),(37,425),(37,426),
-- Skills de Feiticeiro
(38,427),(38,428),(38,429),(38,430),(38,431),(38,432),(38,433),(38,434),(38,435),(38,436),(38,437),(38,438),(38,439),(38,440),(38,441),(38,442),(38,443),(38,444),(38,445),(38,446),(38,447),
(38,448),(38,449),(38,450),(38,451),(38,452),(38,453),
-- Skills de Sícario
(39,454),(39,455),(39,456),(39,457),(39,458),(39,459),(39,460),(39,461),(39,462),(39,463),(39,464),(39,465),(39,466),(39,467),(39,468),(39,469),(39,470),(39,471),
-- Skills de Renegado
(40,472),(40,473),(40,474),(40,475),(40,476),(40,477),(40,478),(40,479),(40,480),(40,481),(40,482),(40,483),(40,484),(40,485),(40,486),(40,487),(40,488),(40,489),(40,490),(40,491),(40,492),
(40,493),
-- Skills de Mecânico
(41,494),(41,495),(41,496),(41,497),(41,498),(41,499),(41,500),(41,501),(41,502),(41,503),(41,504),(41,505),(41,506),(41,507),(41,508),(41,509),(41,510),(41,511),(41,512),(41,513),(41,514),
(41,515),(41,516),(41,517),(41,518),(41,519),(41,520),(41,521),(41,522),(41,523),
-- SKills de Bioquímico
(42,524),(42,525),(42,526),(42,527),(42,528),(42,529),(42,530),(42,531),(42,532),(42,533),(42,534),(42,535),(42,536),(42,537),(42,538),(42,539),(42,540),(42,541),(42,542),(42,543),
-- Skills de Arcebispo
(44,544),(44,545),(44,546),(44,547),(44,548),(44,549),(44,550),(44,551),(44,552),(44,553),(44,554),(44,555),(44,556),(44,557),(44,558),(44,559),(44,560),(44,561),(44,562),(44,563),(44,564),
-- Skills de Shura
(43,565),(43,566),(43,567),(43,568),(43,569),(43,570),(43,571),(43,572),(43,573),(43,574),(43,575),(43,576),(43,577),(43,578),(43,579),(43,580),(43,581),(43,582),(43,583),(43,584),(43,585),(43,586),
(43,587),
-- Skills de Sentinela
(45,588),(45,589),(45,590),(45,591),(45,592),(45,593),(45,594),(45,595),(45,596),(45,597),(45,598),(45,599),(45,600),(45,601),(45,602),(45,603),(45,604),(45,605),(45,606),(45,607),(45,608),(45,609),
(45,610),
-- Skills de Trovador
(46,611),(46,612),(46,613),(46,614),(46,615),(46,616),(46,617),(46,618),(46,619),(46,620),(46,621),(46,622),(46,623),(46,624),(46,625),(46,626),(46,627),(46,628),(46,629),(46,630),(46,631),(46,632),
(46,633),(46,634),
-- Skills de Musa
(47,612),(47,613),(47,614),(47,615),(47,616),(47,617),(47,618),(47,619),(47,620),(47,621),(47,622),(47,623),(47,624),(47,625),(47,626),(47,627),(47,628),(47,629),(47,630),(47,631),
(47,635),(47,636),(47,637),(47,638),
-- Skills de Justiceiro
(50,674),(50,675),(50,676),(50,677),(50,678),(50,679),(50,680),(50,681),(50,682),(50,683),(50,684),(50,685),(50,686),(50,687),(50,688),(50,689),(50,690),(50,691),(50,692),(50,693),(50,694),

-- Skills de Insurgente
(58,695),(58,696),(58,697),(58,698),(58,699),(58,700),(58,701),(58,702),(58,703),(58,704),(58,705),(58,706),(58,707),(58,708),(58,709),(58,710),(58,711),(58,712),(58,713),(58,714),
-- Skills de Ninja
(49,715),(49,716),(49,717),(49,718),(49,719),(49,720),(49,721),(49,722),(49,723),(49,724),(49,725),(49,726),(49,727),(49,728),(49,729),(49,730),(49,731),(49,732),(49,733),(49,734),(49,735),
(49,736),(49,737),
-- Skills de Oboro
(57,738),(57,739),(57,740),(57,741),(57,742),(57,743),(57,744),(57,745),(57,746),(57,747),(57,748),(57,749),(57,750),(57,751),(57,752),(57,753),(57,754),(57,755),(57,756),(57,757),(57,758),
(57,759),(57,760),(57,761),(57,762),(57,763),
-- Skills de Kagerou
(56,738),(56,739),(56,740),(56,741),(56,742),(56,743),(56,744),(56,745),(56,746),(56,747),(56,748),(56,749),(56,750),(56,751),(56,752),(56,753),(56,754),(56,755),(56,756),(56,757),(56,758),
(56,759),(56,763),(56,764),(56,765),
-- Skills de Taekwons
(48,766),(48,767),(48,768),(48,769),(48,770),(48,771),(48,772),(48,773),(48,774),(48,775),(48,776),(48,777),(48,778),(48,779),(48,780),(48,781),(48,782),
-- Skills de Mestre Taekwons
(52,783),(52,784),(52,785),(52,786),(52,787),(52,788),(52,789),(52,790),(52,791),(52,792),(52,793),(52,794),(52,795),(52,796),(52,797),(52,798),(52,799),(52,800),(52,801),
-- Skills Espiritualista
(53,802),(53,803),(53,804),(53,805),(53,806),(53,807),(53,808),(53,809),(53,810),(53,811),(53,812),(53,813),(53,814),(53,815),(53,816),(53,817),(53,818),(53,819),(53,820),(53,821),(53,822),
(53,823),(53,824),(53,825),(53,826),(53,827),(53,828),
-- Skills de Mestre Estelar
(54,829),(54,830),(54,831),(54,832),(54,833),(54,834),(54,835),(54,836),(54,837),(54,838),(54,839),(54,840),(54,841),(54,842),(54,843),(54,844),(54,845),(54,846),(54,847),(54,848),
-- Skills de Ceifador
(55,849),(55,850),(55,851),(55,852),(55,853),(55,854),(55,855),(55,856),(55,857),(55,858),(55,859),(55,860),(55,861),(55,862),(55,863),(55,864),(55,865);

SELECT h.nome, c.nome as 'nomeSkill' FROM classe_habilidade as ch JOIN classe as c ON ch.fkClasse = c.idClasse JOIN habilidade as h ON ch.fkHabilidade = h.idHabilidade WHERE fkClasse=17;
SELECT COUNT(*) FROM habilidade;
SELECT nome from Classe;
SELECT h.nome, c.nome, classeAnterior.nome FROM classe_habilidade as ch JOIN classe as c ON ch.fkClasse = c.idClasse 
JOIN habilidade as h ON ch.fkHabilidade = h.idHabilidade JOIN classe as classeAnterior ON classeAnterior.idClasse = c.classeAnterior WHERE fkClasse=17;
SELECT b.*, c.nome as 'nomeClasse',  c.descricao, ca.nome as 'classeAnterior', c.tipo FROM classe as c LEFT JOIN classe as ca ON c.classeAnterior = ca.idClasse JOIN bonus as b ON b.idBonus = c.fkBonus WHERE c.idClasse = 1;
-- SELECT h.nome as 'nomeSkill', c.nome as 'nomeClasse', c.descricao FROM habilidade as h 
--    JOIN classe as c ON h.fkClasse = c.idClasse WHERE h.fkClasse = c.idClasse;

-- Testes para a tabela associativa entre build e skills
INSERT INTO habilidades_principais VALUES (1, 1, 1, 1 , 1, 1), (1, 1, 1, 1 , 1, 2), (1, 1, 1, 1 , 1, 3), (1, 1, 1, 1 , 1, 4), (1, 1, 1, 1 , 1, 5);
SELECT h.* FROM habilidades_principais as hp  JOIN habilidade as h ON hp.fkHabilidade = h.idHabilidade JOIN classe as c ON hp.fkClasse = c.idClasse WHERE hp.fkUsuario = 1 AND hp.fkBuild = 5;
SELECT h.* FROM habilidades_principais as hp RIGHT JOIN habilidade as h ON hp.fkHabilidade = h.idHabilidade JOIN classe_habilidade as ch ON ch.fkHabilidade = h.idHabilidade WHERE ch.fkClasse = 26;