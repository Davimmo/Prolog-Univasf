%Fatos
    %Carga horária
        %Primeiro Período
            cargaHoraria('GA',60).
            cargaHoraria('C_1',60).
            cargaHoraria('cum_expr',60).
            cargaHoraria('alg_prog',90).
            cargaHoraria('int_eng',30).

        %Segundo Período
            cargaHoraria('GA',60).
            cargaHoraria('C_2',60).
            cargaHoraria('Fis_1',60).
            cargaHoraria('AED',60).
            cargaHoraria('elt_dig'60).
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
            cargaHoraria('cal_num',60).
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
            cargaHoraria('eng_soft',60).
            cargaHoraria('eng_soft',60).
    
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
            cargaHoraria('sis_ctr',60).
            cargaHoraria('comp_graf',60).
            cargaHoraria('meio_ambiente',30).
            cargaHoraria('compiladores',60).
            cargaHoraria('int_eng_eco',30).
            cargaHoraria('eletiva_1',30).
        
        %Oitavo Périodo
            cargaHoraria('asp_legais',30).
            cargaHoraria('sis_ctr',60).
            cargaHoraria('TCC_1',60).
            cargaHoraria('met_pesq',30).
            cargaHoraria('modelagem',60).
            cargaHoraria('teoria_comp',60).
            cargaHoraria('optativa_1',60).
        
        %Nono Período
            cargaHoraria('empreendedorismo',30).
            cargaHoraria('optativa_3',60).
            cargaHoraria('TCC_2',60).
            cargaHoraria('nucleo_tematico',120).
            cargaHoraria('optativa_2',60).
            cargaHoraria('avl_des_sis',60).

        %Décimo Período
            cargaHoraria('eletiva_2',60).
            cargaHoraria('estagio',240).
            cargaHoraria('optativa_4',60).

    %Pre-Requesitos
        %Primeiro Período não tem pre-requesitos

        % Segundo Período
            %Álgebra
            preRequesito('GA','algebra').
            %Calculo 2
            preRequesito('C_1','C_2').
            %Algoritimo e Estrutura de dados
            preRequesito('AED','alg_prog').
            %Eletrônica digital
            preRequesito('int_eng','eletronica_digital').

        %Terceiro Período
            %Lógica para computação
            preRequesito('discreta','logica').
            %Física Teórica 2
            preRequesito('fis1','fis2').
            %Organização e Arquitetura de computadores
            preRequesito('elt_dig','OAC').
            %Laboratório de Organização e Arquitetura de computadores
            preRequesito('elt_dig','LOAC').

        % Quarto Período
            % Calculo 4
            preRequisito('C_2', 'C_4').
            % Calculo Numerico
            preRequisito('C_1', 'calc_num').
            preRequisito('algebra', 'calc_num').
            preRequisito('alg_prog', 'calc_Num').
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
            preRequisito('algo_prog','POO').


        % Quinto Período
            %Analise de Sinais e sistemas
            preRequisito('C_4', 'sinais').
            %Engenharia de software
            preRequisito('POO','eng-soft_1').
            %Redes de Computadores
            preRequisito('OAC','redes').
            %Sistemas Microcontrolados
            preRequisito('algo_prog','micro').
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
            preRequisito('eng_soft1','eng_soft2').
            %Instrumentação Eletrônica
            preRequisito('micro','IE').
            %Inteligência Artificial
            preRequisito('AED','IA').
            preRequisito('logica','IA').
            %Linguagens formais e Autômatos
            preRequisito('algo_prog','LFA').
            preRequisito('discreta','LFA').
            %Sistemas Distribuídos 1
            preRequisito('SO','distribuidos_1').
            preRequisito('redes','distribuidos_1').
            preRequisito('LRC','distribuidos_1').



    %Co-Requesitos
        coRequesito('circuitos','LCE').
        coRequesito('elt_dig','lab_eletronica').
        coRequesito('OAC','LOAC').

%Regras
    ePreRequesito(X, Y) :- 
        preRequesito(X, Y).  % caso base: X é pré-requisito direto de Y

    ePreRequesito(X, Y) :- 
        preRequesito(X, Z),  % caso recursivo: X é pré-requisito de Z
        ePreRequesito(Z, Y). % e Z é pré-requisito (direto ou indireto) de Y