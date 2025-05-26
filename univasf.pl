preRequesito('GA','algebra').
preRequesito('c_1','c_2').
preRequesito('c_2','c_4').
preRequesito('AED','alg_prog').
preRequesito('int_a_engenharia','eletronica_digital').
preRequesito('discreta','logica').
preRequesito('fis_1','fis_2').
preRequesito('eletronica_digital','OAC').
preRequesito('eletronica_digital','LOAC').

coRequesito('circuitos','lab_circuitos').
coRequesito('lab_circuitos','circuitos').

coRequesito('eletronica_digital','lab_eletronica').
coRequesito('lab_eletronica','eletronica_digital').

coRequesito('OAC','LOAC').
coRequesito('LOAC','OAC').



% Quarto Periodo

% Calculo 4
preRequisito('C2', 'C4').

% Calculo Numero
preRequisito('C1', 'calc_num').
preRequisito('algebra', 'calc_num').
preRequisito('algo-prog', 'calc_Num').


% Estatistica
preRequisito('C1', 'estatistica').

% Eletronica Analogica
preRequisito('circuitos', 'analogica').
preRequisito('LEA','LCE').

% Lab. de EA
preRequisito('circuitos','LEA').
preRequisito('LCE','LEA').

% Fisica Teorica 3
preRequisito('fis_2', 'C2').

% POO
preRequisito('algo_prog','POO').




% Quinto Periodo

preRequisito('C4', 'sinais').

preRequisito('eng-soft','BD').

preRequisito('BD_1','eng-soft1').
preRequisito('POO','eng-soft1').

preRequisito('OAC','redes').
preRequisito('LRC','redes').

preRequisito('redes','LRC').

preRequisito('algo_prog','micro').
preRequisito('analogica','micro').
preRequisito('LEA','micro').
preRequisito('OAC','micro').

preRequisito('OAC', 'SO').
preRequisito('AED', 'SO').

% Sexto Periodo

preRequisito('BD_1','BD_2').
preRequisito('eng_soft1','eng_soft2').
preRequisito('micro','IE').
preRequisito('AED','IA').
preRequisito('logica','IA').
preRequisito('algo_prog','LFA').
preRequisito('discreta','LFA').
preRequisito('SO','distribuidos').
preRequisito('redes','distribuidos').
preRequisito('LRC','distribuidos').


ePreRequesito(X, Y) :- 
    preRequesito(X, Y).  % caso base: X é pré-requisito direto de Y

ePreRequesito(X, Y) :- 
    preRequesito(X, Z),  % caso recursivo: X é pré-requisito de Z
    ePreRequesito(Z, Y). % e Z é pré-requisito (direto ou indireto) de Y