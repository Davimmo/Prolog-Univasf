// Estrutura de dados das disciplinas do fluxograma
const disciplinas = {
  // Primeiro Período
  'GA': { 
    nome: 'Geometria Analítica', 
    periodo: 1, 
    cargaHoraria: 60, 
    preRequisitos: [], 
    coRequisitos: [] 
  },
  'C_1': { 
    nome: 'Cálculo 1', 
    periodo: 1, 
    cargaHoraria: 60, 
    preRequisitos: [], 
    coRequisitos: [] 
  },
  'com_expr': { 
    nome: 'Comunicação e Expressão', 
    periodo: 1, 
    cargaHoraria: 30, 
    preRequisitos: [], 
    coRequisitos: [] 
  },
  'alg_prog': { 
    nome: 'Algoritmos e Programação', 
    periodo: 1, 
    cargaHoraria: 90, 
    preRequisitos: [], 
    coRequisitos: [] 
  },
  'int_eng_comp': { 
    nome: 'Introdução à Engenharia de Computação', 
    periodo: 1, 
    cargaHoraria: 30, 
    preRequisitos: [], 
    coRequisitos: [] 
  },
  'discreta': { 
    nome: 'Matemática Discreta', 
    periodo: 1, 
    cargaHoraria: 60, 
    preRequisitos: [], 
    coRequisitos: [] 
  },

  // Segundo Período
  'algebra': { 
    nome: 'Álgebra Linear', 
    periodo: 2, 
    cargaHoraria: 60, 
    preRequisitos: ['GA'], 
    coRequisitos: [] 
  },
  'C_2': { 
    nome: 'Cálculo 2', 
    periodo: 2, 
    cargaHoraria: 60, 
    preRequisitos: ['C_1'], 
    coRequisitos: [] 
  },
  'fis_1': { 
    nome: 'Física 1', 
    periodo: 2, 
    cargaHoraria: 60, 
    preRequisitos: [], 
    coRequisitos: [] 
  },
  'AED': { 
    nome: 'Algoritmos e Estrutura de Dados', 
    periodo: 2, 
    cargaHoraria: 60, 
    preRequisitos: ['alg_prog'], 
    coRequisitos: [] 
  },
  'elt_dig': { 
    nome: 'Eletrônica Digital', 
    periodo: 2, 
    cargaHoraria: 60, 
    preRequisitos: ['int_eng_comp'], 
    coRequisitos: ['LED'] 
  },
  'LED': { 
    nome: 'Laboratório de Eletrônica Digital', 
    periodo: 2, 
    cargaHoraria: 30, 
    preRequisitos: [], 
    coRequisitos: ['elt_dig'] 
  },

  // Terceiro Período
  'logica': { 
    nome: 'Lógica para Computação', 
    periodo: 3, 
    cargaHoraria: 60, 
    preRequisitos: ['discreta'], 
    coRequisitos: [] 
  },
  'fis_exp': { 
    nome: 'Física Experimental', 
    periodo: 3, 
    cargaHoraria: 60, 
    preRequisitos: [], 
    coRequisitos: [] 
  },
  'fis_2': { 
    nome: 'Física 2', 
    periodo: 3, 
    cargaHoraria: 60, 
    preRequisitos: ['fis_1'], 
    coRequisitos: [] 
  },
  'circuitos': { 
    nome: 'Circuitos Elétricos', 
    periodo: 3, 
    cargaHoraria: 60, 
    preRequisitos: [], 
    coRequisitos: ['LCE'] 
  },
  'LCE': { 
    nome: 'Laboratório de Circuitos Elétricos', 
    periodo: 3, 
    cargaHoraria: 30, 
    preRequisitos: [], 
    coRequisitos: ['circuitos'] 
  },
  'OAC': { 
    nome: 'Organização e Arquitetura de Computadores', 
    periodo: 3, 
    cargaHoraria: 60, 
    preRequisitos: ['elt_dig'], 
    coRequisitos: ['LOAC'] 
  },
  'LOAC': { 
    nome: 'Laboratório de Organização e Arquitetura de Computadores', 
    periodo: 3, 
    cargaHoraria: 30, 
    preRequisitos: ['elt_dig'], 
    coRequisitos: ['OAC'] 
  },

  // Quarto Período
  'calc_num': { 
    nome: 'Cálculo Numérico', 
    periodo: 4, 
    cargaHoraria: 60, 
    preRequisitos: ['C_1', 'algebra', 'alg_prog'], 
    coRequisitos: [] 
  },
  'C_4': { 
    nome: 'Cálculo 4', 
    periodo: 4, 
    cargaHoraria: 60, 
    preRequisitos: ['C_2'], 
    coRequisitos: [] 
  },
  'fis_3': { 
    nome: 'Física 3', 
    periodo: 4, 
    cargaHoraria: 60, 
    preRequisitos: ['fis_2', 'C_2'], 
    coRequisitos: [] 
  },
  'analogica': { 
    nome: 'Eletrônica Analógica', 
    periodo: 4, 
    cargaHoraria: 60, 
    preRequisitos: ['circuitos'], 
    coRequisitos: ['LEA'] 
  },
  'LEA': { 
    nome: 'Laboratório de Eletrônica Analógica', 
    periodo: 4, 
    cargaHoraria: 30, 
    preRequisitos: ['LCE'], 
    coRequisitos: ['analogica'] 
  },
  'POO': { 
    nome: 'Programação Orientada a Objetos', 
    periodo: 4, 
    cargaHoraria: 60, 
    preRequisitos: ['alg_prog'], 
    coRequisitos: [] 
  },
  'estatistica': { 
    nome: 'Estatística e Probabilidade', 
    periodo: 4, 
    cargaHoraria: 60, 
    preRequisitos: ['C_1'], 
    coRequisitos: [] 
  },

  // Quinto Período
  'SO': { 
    nome: 'Sistemas Operacionais', 
    periodo: 5, 
    cargaHoraria: 60, 
    preRequisitos: ['OAC', 'AED'], 
    coRequisitos: [] 
  },
  'redes': { 
    nome: 'Redes de Computadores', 
    periodo: 5, 
    cargaHoraria: 60, 
    preRequisitos: ['OAC'], 
    coRequisitos: ['LRC'] 
  },
  'LRC': { 
    nome: 'Laboratório de Redes de Computadores', 
    periodo: 5, 
    cargaHoraria: 30, 
    preRequisitos: ['OAC'], 
    coRequisitos: ['redes'] 
  },
  'micro': { 
    nome: 'Sistemas Microcontrolados', 
    periodo: 5, 
    cargaHoraria: 60, 
    preRequisitos: ['alg_prog', 'analogica', 'LEA', 'OAC'], 
    coRequisitos: [] 
  },
  'sinais': { 
    nome: 'Análise de Sinais e Sistemas', 
    periodo: 5, 
    cargaHoraria: 60, 
    preRequisitos: ['C_4'], 
    coRequisitos: [] 
  },
  'BD_1': { 
    nome: 'Banco de Dados 1', 
    periodo: 5, 
    cargaHoraria: 60, 
    preRequisitos: [], 
    coRequisitos: [] 
  },
  'eng_soft_1': { 
    nome: 'Engenharia de Software 1', 
    periodo: 5, 
    cargaHoraria: 60, 
    preRequisitos: ['POO'], 
    coRequisitos: ['BD_1'] 
  },

  // Sexto Período
  'distribuidos_1': { 
    nome: 'Sistemas Distribuídos 1', 
    periodo: 6, 
    cargaHoraria: 60, 
    preRequisitos: ['SO', 'redes'], 
    coRequisitos: [] 
  },
  'IE': { 
    nome: 'Instrumentação Eletrônica', 
    periodo: 6, 
    cargaHoraria: 60, 
    preRequisitos: ['micro'], 
    coRequisitos: [] 
  },
  'ADM': { 
    nome: 'Administração Para Engenharia', 
    periodo: 6, 
    cargaHoraria: 30, 
    preRequisitos: [], 
    coRequisitos: [] 
  },
  'IA': { 
    nome: 'Inteligência Artificial', 
    periodo: 6, 
    cargaHoraria: 60, 
    preRequisitos: ['AED', 'logica'], 
    coRequisitos: [] 
  },
  'LFA': { 
    nome: 'Linguagens Formais e Autômatos', 
    periodo: 6, 
    cargaHoraria: 60, 
    preRequisitos: ['alg_prog', 'discreta'], 
    coRequisitos: [] 
  },
  'BD_2': { 
    nome: 'Banco de Dados 2', 
    periodo: 6, 
    cargaHoraria: 30, 
    preRequisitos: ['BD_1'], 
    coRequisitos: [] 
  },
  'eng_soft_2': { 
    nome: 'Engenharia de Software 2', 
    periodo: 6, 
    cargaHoraria: 60, 
    preRequisitos: ['eng_soft_1'], 
    coRequisitos: [] 
  },

  // Sétimo Período
  'telecom': { 
    nome: 'Princípios de Telecomunicações', 
    periodo: 7, 
    cargaHoraria: 60, 
    preRequisitos: ['sinais'], 
    coRequisitos: [] 
  },
  'sist_ctr_1': { 
    nome: 'Sistemas de Controle 1', 
    periodo: 7, 
    cargaHoraria: 60, 
    preRequisitos: ['sinais'], 
    coRequisitos: [] 
  },
  'comp_graf': { 
    nome: 'Computação Gráfica', 
    periodo: 7, 
    cargaHoraria: 60, 
    preRequisitos: ['GA', 'AED'], 
    coRequisitos: [] 
  },
  'meio_ambiente': { 
    nome: 'Meio Ambiente e Desenvolvimento Sustentável', 
    periodo: 7, 
    cargaHoraria: 30, 
    preRequisitos: [], 
    coRequisitos: [] 
  },
  'compiladores': { 
    nome: 'Compiladores', 
    periodo: 7, 
    cargaHoraria: 60, 
    preRequisitos: ['LFA', 'AED', 'OAC'], 
    coRequisitos: [] 
  },
  'int_eng_eco': { 
    nome: 'Introdução à Engenharia Econômica', 
    periodo: 7, 
    cargaHoraria: 30, 
    preRequisitos: [], 
    coRequisitos: [] 
  },
  'met_pesq': { 
    nome: 'Metodologia da Pesquisa Científica', 
    periodo: 7, 
    cargaHoraria: 30, 
    preRequisitos: ['com_expr'], 
    coRequisitos: [] 
  },

  // Oitavo Período
  'asp_legais': { 
    nome: 'Aspectos Legais', 
    periodo: 8, 
    cargaHoraria: 30, 
    preRequisitos: [], 
    coRequisitos: [] 
  },
  'sist_ctr_2': { 
    nome: 'Sistemas de Controle 2', 
    periodo: 8, 
    cargaHoraria: 60, 
    preRequisitos: ['sist_ctr_1'], 
    coRequisitos: [] 
  },
  'TCC_1': { 
    nome: 'Trabalho de Conclusão de Curso 1', 
    periodo: 8, 
    cargaHoraria: 60, 
    preRequisitos: [], // Regra especial: 70% do curso
    coRequisitos: [] 
  },
  'eletiva_1': { 
    nome: 'Eletiva 1', 
    periodo: 8, 
    cargaHoraria: 60, 
    preRequisitos: [], 
    coRequisitos: [] 
  },
  'modelagem': { 
    nome: 'Modelagem e Simulação de Sistemas', 
    periodo: 8, 
    cargaHoraria: 60, 
    preRequisitos: ['estatistica', 'OAC', 'eng_soft_1', 'calc_num'], 
    coRequisitos: [] 
  },
  'teo_comp': { 
    nome: 'Teoria da Computação', 
    periodo: 8, 
    cargaHoraria: 60, 
    preRequisitos: ['LFA'], 
    coRequisitos: [] 
  },
  'optativa_1': { 
    nome: 'Optativa 1', 
    periodo: 8, 
    cargaHoraria: 60, 
    preRequisitos: [], 
    coRequisitos: [] 
  },

  // Nono Período
  'empreendedorismo': { 
    nome: 'Empreendedorismo', 
    periodo: 9, 
    cargaHoraria: 30, 
    preRequisitos: [], 
    coRequisitos: [] 
  },
  'optativa_3': { 
    nome: 'Optativa 3', 
    periodo: 9, 
    cargaHoraria: 60, 
    preRequisitos: [], 
    coRequisitos: [] 
  },
  'TCC_2': { 
    nome: 'Trabalho de Conclusão de Curso 2', 
    periodo: 9, 
    cargaHoraria: 60, 
    preRequisitos: ['TCC_1'], 
    coRequisitos: [] 
  },
  'nucleo_tematico': { 
    nome: 'Núcleo Temático', 
    periodo: 9, 
    cargaHoraria: 120, 
    preRequisitos: [], 
    coRequisitos: [] 
  },
  'optativa_2': { 
    nome: 'Optativa 2', 
    periodo: 9, 
    cargaHoraria: 60, 
    preRequisitos: [], 
    coRequisitos: [] 
  },
  'aval_sist': { 
    nome: 'Avaliação e Desempenho de Sistemas', 
    periodo: 9, 
    cargaHoraria: 60, 
    preRequisitos: ['modelagem', 'redes', 'distribuidos_1'], 
    coRequisitos: [] 
  },

  // Décimo Período
  'eletiva_2': { 
    nome: 'Eletiva 2', 
    periodo: 10, 
    cargaHoraria: 60, 
    preRequisitos: [], 
    coRequisitos: [] 
  },
  'estagio': { 
    nome: 'Estágio Supervisionado', 
    periodo: 10, 
    cargaHoraria: 240, 
    preRequisitos: [], // Regra especial: 50% do curso
    coRequisitos: [] 
  },
  'optativa_4': { 
    nome: 'Optativa 4', 
    periodo: 10, 
    cargaHoraria: 60, 
    preRequisitos: [], 
    coRequisitos: [] 
  }
};

export default disciplinas;
