%Fatos
    %Carga horária
        %Primeiro Período
            cargaHoraria('GA',60).
            cargaHoraria('C_1',60).
            cargaHoraria('com_expr',30).
            cargaHoraria('alg_prog',90).
            cargaHoraria('int_eng_comp',30).
            cargaHoraria('discreta',60).

        %Segundo Período
            cargaHoraria('algebra',60).
            cargaHoraria('C_2',60).
            cargaHoraria('fis_1',60).
            cargaHoraria('AED',60).
            cargaHoraria('elt_dig',60).
            cargaHoraria('LED',30).

        %Terceiro Periodo
            cargaHoraria('logica',60).
            cargaHoraria('fis_exp',60).
            cargaHoraria('fis_2',60).
            cargaHoraria('circuitos',60).
            cargaHoraria('LCE',30).
            cargaHoraria('OAC',60).
            cargaHoraria('LOAC',30).

        %Quarto Período
            cargaHoraria('calc_num',60).
            cargaHoraria('C_4',60).
            cargaHoraria('fis_3',60).
            cargaHoraria('analogica',60).
            cargaHoraria('LEA',30).
            cargaHoraria('POO',60).
            cargaHoraria('estatistica',60).
        
        %Quinto Período
            cargaHoraria('SO',60).
            cargaHoraria('redes',60).
            cargaHoraria('LRC',30).
            cargaHoraria('micro',60).
            cargaHoraria('sinais',60).
            cargaHoraria('BD_1',60).
            cargaHoraria('eng_soft_1',60).
    
        %Sexto Período
            cargaHoraria('distribuidos_1',60).
            cargaHoraria('IE',60).
            cargaHoraria('ADM',30).
            cargaHoraria('IA',60).
            cargaHoraria('LFA',60).
            cargaHoraria('BD_2',30).
            cargaHoraria('eng_soft_2',60).
        
        %Sétimo Período
            cargaHoraria('telecom',60).
            cargaHoraria('sist_ctr_1',60).
            cargaHoraria('comp_graf',60).
            cargaHoraria('meio_ambiente',30).
            cargaHoraria('compiladores',60).
            cargaHoraria('int_eng_eco',30).
            cargaHoraria('met_pesq',30).
        
        %Oitavo Périodo
            cargaHoraria('asp_legais',30).
            cargaHoraria('sist_ctr_2',60).
            cargaHoraria('TCC_1',60).
            cargaHoraria('eletiva_1',60).
            cargaHoraria('modelagem',60).
            cargaHoraria('teo_comp',60).
            cargaHoraria('optativa_1',60).
        
        %Nono Período
            cargaHoraria('empreendedorismo',30).
            cargaHoraria('optativa_3',60).
            cargaHoraria('TCC_2',60).
            cargaHoraria('nucleo_tematico',120).
            cargaHoraria('optativa_2',60).
            cargaHoraria('aval_sist',60).

        %Décimo Período
            cargaHoraria('eletiva_2',60).
            cargaHoraria('estagio',240).
            cargaHoraria('optativa_4',60).

    %Pre-Requisitos
        %Primeiro Período não tem pre-Requisitos

        % Segundo Período
            %Álgebra
            preRequisito('GA','algebra').
            %Calculo 2
            preRequisito('C_1','C_2').
            %Algoritimo e Estrutura de dados
            preRequisito('AED','alg_prog').
            %Eletrônica digital
            preRequisito('int_eng_comp','elt_dig').

        %Terceiro Período
            %Lógica para computação
            preRequisito('discreta','logica').
            %Física Teórica 2
            preRequisito('fis_1','fis_2').
            %Organização e Arquitetura de computadores
            preRequisito('elt_dig','OAC').
            %Laboratório de Organização e Arquitetura de computadores
            preRequisito('elt_dig','LOAC').

        % Quarto Período
            % Calculo 4
            preRequisito('C_2', 'C_4').
            % Calculo Numerico
            preRequisito('C_1', 'calc_num').
            preRequisito('algebra', 'calc_num').
            preRequisito('alg_prog', 'calc_num').
            % Estatistica
            preRequisito('C_1', 'estatistica').
            % Eletronica Analogica
            preRequisito('circuitos', 'analogica').
            % Lab. de Eletrônica Analôgica
            preRequisito('LCE','LEA').
            % Fisica Teorica 3
            preRequisito('fis_2', 'fis_3').
            preRequisito('C_2', 'fis_3').
            % POO
            preRequisito('alg_prog','POO').


        % Quinto Período
            %Analise de Sinais e sistemas
            preRequisito('C_4', 'sinais').
            %Engenharia de software
            preRequisito('POO','eng_soft_1').
            %Redes de Computadores
            preRequisito('OAC','redes').
            %Sistemas Microcontrolados
            preRequisito('alg_prog','micro').
            preRequisito('analogica','micro').
            preRequisito('LEA','micro').
            preRequisito('OAC','micro').
            %Sistemas Operacionais
            preRequisito('OAC', 'SO').
            preRequisito('AED', 'SO').

        % Sexto Período
            %Banco de dados 2
            preRequisito('BD_1','BD_2').
            %Engenharia de Software 2
            preRequisito('eng_soft_1','eng_soft_2').
            %Instrumentação Eletrônica
            preRequisito('micro','IE').
            %Inteligência Artificial
            preRequisito('AED','IA').
            preRequisito('logica','IA').
            %Linguagens formais e Autômatos
            preRequisito('alg_prog','LFA').
            preRequisito('discreta','LFA').
            %Sistemas Distribuídos 1
            preRequisito('SO','distribuidos_1').
            preRequisito('redes','distribuidos_1').
            
        % Sétimo Período
            %Principios de telecom
            preRequisito('sinais','telecom').
            %Sistemas de controle 1
            preRequisito('sinais','sist_ctr_1').
            %Computação gráfica
            preRequisito('GA','comp_graf').
            preRequisito('AED','comp_graf').
            %Compiladores
            preRequisito('LFA','compiladores').
            preRequisito('AED','compiladores').
            preRequisito('OAC','compiladores').
            %Metodologia
            preRequisito('com_exp','met_pesq').
            
        % Oitavo Período
            %Sistemas de controle 2
            preRequisito('sist_ctr_1','sist_ctr_2').
            %Modelagem
            preRequisito('estatistica','modelagem').  
            preRequisito('OAC','modelagem').
            preRequisito('eng_soft_1','modelagem').
            preRequisito('calc_num','modelagem').
            %Teoria da computação
            preRequisito('LFA','teo_comp').

        %Nono Período
            %Trabalho de conclusão de curso 2
            preRequisito('TCC_1','TCC_2').
            %Avaliação e desenvolvimento de sistemas
            preRequisito('modelagem','aval_sist').
            preRequisito('redes','aval_sist').
            preRequisito('distribuidos_1','aval_sist').

    %Co-Requisitos
        coRequisito('elt_dig','LED').
        coRequisito('OAC','LOAC').
        coRequisito('circuitos','LCE').
        coRequisito('analogica','LEA').
        coRequisito('BD_1','eng_soft_1').

    %Descrição dos alunos
		%Ana
        cursou(ana, 'GA').
        cursou(ana, 'C_1').
        cursou(ana, 'com_expr').
        cursou(ana, 'alg_prog').
        cursou(ana, 'int_eng_comp').
        cursou(ana, 'discreta').
        cursou(ana, 'algebra').
        cursou(ana, 'C_2').
        cursou(ana, 'fis_1').
        cursou(ana, 'AED').
        cursou(ana, 'elt_dig').
        cursou(ana, 'LED').
        cursou(ana, 'logica').
        cursou(ana, 'fis_2').
        cursou(ana, 'circuitos').
        cursou(ana, 'LCE').
        cursou(ana, 'OAC').
        cursou(ana, 'LOAC').
        cursou(ana, 'calc_num').
        cursou(ana, 'C_4').
        cursou(ana, 'fis_3').
        cursou(ana, 'analogica').
        cursou(ana, 'LEA').
        cursou(ana, 'POO').
        cursou(ana, 'estatistica').
        cursou(ana, 'SO').
        cursou(ana, 'redes').
        cursou(ana, 'LRC').
        cursou(ana, 'micro').
        cursou(ana, 'sinais').
        cursou(ana, 'BD_1').
        cursou(ana, 'eng_soft_1').
        cursou(ana, 'distribuidos_1').
        cursou(ana, 'IA').
        cursou(ana, 'LFA').
        cursou(ana, 'eng_soft_2').
        cursou(ana, 'IE').
        cursou(ana, 'ADM').
        cursou(ana, 'BD_2').
        cursou(ana, 'telecom').
        cursou(ana, 'sist_ctr_1').
        cursou(ana, 'comp_graf').
        cursou(ana, 'meio_ambiente').
        cursou(ana, 'compiladores').
		cursou(ana, 'met_pesq').
		cursou(ana,'eletiva_1').
		cursou(ana,'eletiva_2').
		cursou(ana,'empreendedorismo').
  
    		%João
  	cursou(joao, 'GA').
	cursou(joao, 'C_1').
	cursou(joao, 'com_expr').
	cursou(joao, 'alg_prog').
	cursou(joao, 'int_eng_comp').
	cursou(joao, 'discreta').
	cursou(joao, 'algebra').
	cursou(joao, 'C_2').
	cursou(joao, 'fis_1').
	cursou(joao, 'AED').
	cursou(joao, 'elt_dig').
	cursou(joao, 'LED').
	cursou(joao, 'logica').
	cursou(joao, 'fis_exp').
	cursou(joao, 'fis_2').
	cursou(joao, 'circuitos').
	cursou(joao, 'LCE').
	cursou(joao, 'OAC').
	cursou(joao, 'LOAC').
	cursou(joao, 'calc_num').
	cursou(joao, 'C_4').
	cursou(joao, 'fis_3').
	cursou(joao, 'analogica').
	cursou(joao, 'LEA').
	cursou(joao, 'POO').
	cursou(joao, 'estatistica').
	cursou(joao, 'SO').
	cursou(joao, 'redes').
	cursou(joao, 'LRC').
	cursou(joao, 'micro').
	cursou(joao,'empreendedorismo').
	cursou(joao, 'met_pesq').
	cursou(joao,'eletiva_1').
	cursou(joao,'eletiva_2').
	cursou(joao, 'comp_graf').




%Regras
    %Verificar se é uma disciplina é preRequisito
        ePreRequisito(X, Y) :- 
        preRequisito(X, Y).  % caso base: X é pré-requisito direto de Y

        ePreRequisito(X, Y) :- 
        preRequisito(X, Z),  % caso recursivo: X é pré-requisito de Z
        ePreRequisito(Z, Y). % e Z é pré-requisito (direto ou indireto) de Y

    % Soma a carga horária total do curso
        cargaTotal(Total) :- 
        findall(CH, cargaHoraria(_, CH), Lista),
        sumlist(Lista, Total).

    % Soma a carga horária das disciplinas cursadas por um aluno
        cargaCursada(Aluno, Total) :- 
        findall(CH, (cursou(Aluno, Disc), cargaHoraria(Disc, CH)), Lista),
        sumlist(Lista, Total).

    %Verifica se o aluno pode fazer estágio
        podeEstagiar(Aluno) :-
        cargaCursada(Aluno, CHC),
        cargaTotal(CT),
        Percent is CHC / CT,
        Percent >= 0.5.

    %Verificar se o aluno pode fazer TCC_1
        podeFazerTCC(Aluno) :-
        cargaCursada(Aluno, CHC),
        cargaTotal(CT),
        Percent is CHC / CT,
        Percent >= 0.7.

    /*
    Foram criadas 4 regras para verificar se o aluno pode cursar uma determinada disciplina, em todas elas é excluida a disciplina caso o aluno ja a tenha cursado, exclui-se também nas regras 1, 2 e 3 TCC 1 e estágio que seguem regras proprias tratadas na regra 4.
    */

    % Regra principal - delega para casos específicos e mutuamente exclusivos
    podeCursar(Aluno, Disciplina) :-
        \+ cursou(Aluno, Disciplina), % Condição básica: aluno não cursou ainda
        (   % Caso 1: TCC ou Estágio (regras especiais)
            podeCursar_especial(Aluno, Disciplina)
        ;   % Exclui TCC/Estágio dos casos gerais abaixo
            Disciplina \= 'TCC_1',
            Disciplina \= 'estagio',
            (   % Caso 2: Disciplina COM co-requisito(s)
                podeCursar_com_coreq(Aluno, Disciplina)
            ;   % Caso 3: Disciplina COM pré-requisito(s) e SEM co-requisito(s)
                podeCursar_com_prereq_sem_coreq(Aluno, Disciplina)
            ;   % Caso 4: Disciplina SEM pré-requisitos e SEM co-requisitos
                podeCursar_sem_reqs(Aluno, Disciplina)
            )
        ).

    % Caso 1: Regras especiais para TCC_1 e Estágio
    podeCursar_especial(Aluno, 'TCC_1') :-
        podeFazerTCC(Aluno).
    podeCursar_especial(Aluno, 'estagio') :-
        podeEstagiar(Aluno).

    % Caso 2: Disciplina COM co-requisito(s)
    % Verifica se existe pelo menos um co-req, depois valida todos os pré-reqs e todos os co-reqs.
    podeCursar_com_coreq(Aluno, Disciplina) :-
        coRequisito(_, Disciplina), % Garante que existe PELO MENOS UM co-requisito
        !, % Corte: Se tem co-req, não avalia casos 3 e 4
        forall(preRequisito(PreReq, Disciplina), cursou(Aluno, PreReq)), % Checa TODOS os pré-requisitos
        forall(coRequisito(CoReq, Disciplina), % Checa TODOS os co-requisitos
            ( cursou(Aluno, CoReq) ; podeCursar(Aluno, CoReq) )). % Co-req cursado OU pode cursar

    % Caso 3: Disciplina COM pré-requisito(s) e SEM co-requisito(s)
    % Verifica se existe pré-req e garante que NÃO existe co-req. Valida todos os pré-reqs.
    podeCursar_com_prereq_sem_coreq(Aluno, Disciplina) :-
        preRequisito(_, Disciplina),    % Garante que existe PELO MENOS UM pré-requisito
        \+ coRequisito(_, Disciplina), % Garante que NÃO tem co-requisito
        !, % Corte: Se tem pré-req e não tem co-req, não avalia caso 4
        forall(preRequisito(PreReq, Disciplina), cursou(Aluno, PreReq)). % Checa TODOS os pré-requisitos

    % Caso 4: Disciplina SEM pré-requisitos e SEM co-requisitos
    % Garante que NÃO tem pré-requisitos e NÃO tem co-requisitos.
    podeCursar_sem_reqs(Aluno, Disciplina) :-
        \+ preRequisito(_, Disciplina), % Garante que NÃO tem pré-requisito
        \+ coRequisito(_, Disciplina), % Garante que NÃO tem co-requisito
        !. % Corte final para clareza (assegura que esta é a última opção)
        % Nenhuma outra condição a verificar neste caso mais simples.

            
    % Regra para listar todas as disciplinas que o aluno pode cursar
        disciplinasDisponiveis(Aluno, ListaDisciplinas) :-
            % Encontra todas as disciplinas do curso
            findall(Disc, cargaHoraria(Disc, _), TodasDisciplinas),
            
            % Filtra apenas as que o aluno pode cursar
            findall(Disc, 
                    (member(Disc, TodasDisciplinas), podeCursar(Aluno, Disc)), 
                    ListaDisciplinas).
