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

ePreRequesito(X, Y) :- 
    preRequesito(X, Y).  % caso base: X é pré-requisito direto de Y

ePreRequesito(X, Y) :- 
    preRequesito(X, Z),  % caso recursivo: X é pré-requisito de Z
    ePreRequesito(Z, Y). % e Z é pré-requisito (direto ou indireto) de Y