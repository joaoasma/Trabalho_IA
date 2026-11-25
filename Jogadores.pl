% Bruno Spegiorin Moreno Gomes – 854857 
% João Antônio de Souza Martins – 854847

% ===== BASE DE CONHECIMENTO =====
% Com as cláusulas de primeira ordem

% 1) Preparo_fisico(Ruim) → Problema(Preparo_fisico)
problema(preparo_fisico) :- preparo_fisico(ruim).

% 2) Atritos(Constantes) ∧ Situacao_psicologica(Ruim) → Problema(Equipe_tecnica)
problema(equipe_tecnica) :- atritos(constantes), situacao_psicologica(ruim).

% 3) Preparo_fisico(Bom) ∧ Atritos(Raros) ∧ Situacao_de_gols(Ruim) → Problema(Time)
problema(time) :- preparo_fisico(bom), atritos(raros), situacao_de_gols(ruim).

% 4) Atritos(Constantes) ∧ Salarios(Atrasados) → Problema(Insatisfacao_financeira)
problema(insatisfacao_financeira) :- atritos(constantes), salarios(atrasados).

% 5) Preparo_fisico(Bom) ∧ Situacao_de_gols(Boa) ∧ Salarios(Em_dia) → Problema(Nenhum)
problema(nenhum) :- preparo_fisico(bom), situacao_de_gols(boa), salarios(em_dia).

% 6) Jogador(x) ∧ Tecnico(y) ∧ Discute(x, y) → Atritos(Constantes)
atritos(constantes) :- jogador(X), tecnico(Y), discute(X, Y).

% 7) Jogador(x) ∧ Jogador(y) ∧ Diferente(x, y) ∧ Discute(x, y) → Atritos(Constantes)
atritos(constantes) :- jogador(X), jogador(Y), X \= Y, discute(X, Y).

% 8) Jogador(x) ∧ Suspenso(x) → Situacao_psicologica(Ruim)
situacao_psicologica(ruim) :- jogador(X), suspenso(X).

% 9) Gols_sofridos(x) ∧ Gols_feitos(y) ∧ Maior(x, y) → Situacao_de_gols(Ruim)
situacao_de_gols(ruim) :- gols_sofridos(X), gols_feitos(Y), maior(X, Y).

% 10) Gols_sofridos(x) ∧ Gols_feitos(y) ∧ Menor_ou_igual(x, y) → Situacao_de_gols(Boa)
situacao_de_gols(boa) :- gols_sofridos(X), gols_feitos(Y), menor_ou_igual(X, Y).

% 11) Cartao_vermelho(x) → Suspenso(x)
suspenso(X) :- cartao_vermelho(X).

% 12) Jogador(x) ∧ Faltou_do_treino(x) → Preparo_fisico(Ruim)
preparo_fisico(ruim) :- jogador(X), faltou_do_treino(X).

% 13) Jogador(x) ∧ Lento(x) → Preparo_fisico(Ruim)
preparo_fisico(ruim) :- jogador(X), lento(X).

% Auxílios:
maior(X, Y) :- X > Y.
menor_ou_igual(X, Y) :- X =< Y.

% ===== FATOS =====
% Descomente UMA situação por vez e comente as demais.

% ---- Situação A: esperado -> [equipe_tecnica] ----
preparo_fisico(bom).
jogador(jorge).
cartao_vermelho(jorge).
tecnico(t1).                  % Skolem: existe x, Tecnico(x)
discute(jorge, t1).
lento(nenhum).
faltou_do_treino(nenhum).
salarios(parcial).
gols_sofridos(0).
gols_feitos(0).

% ---- Situação B: esperado -> [preparo_fisico, insatisfacao_financeira] ----
% tecnico(t1).                % Skolem: existe x, Tecnico(x)
% gols_sofridos(1).
% gols_feitos(2).
% salarios(atrasados).
% jogador(lucas).
% lento(lucas).
% jogador(j1).                % Skolem: existe x, y
% jogador(j2).
% discute(j1, j2).
% % fatos para evitar predicado não definido
% cartao_vermelho(nenhum).
% faltou_do_treino(nenhum).

% ---- Situação C: esperado -> [] (nenhum problema identificado) ----
% jogador(j3).                % Skolem: existe x, Jogador(x) e Cartao_vermelho(x)
% cartao_vermelho(j3).
% gols_sofridos(3).
% gols_feitos(5).
% % fatos para evitar predicado não definido
% tecnico(t1).
% discute(nenhum, nenhum).
% lento(nenhum).
% faltou_do_treino(nenhum).
% salarios(parcial).

% ---- Situação D (extra): esperado -> [time] ----
% preparo_fisico(bom).
% atritos(raros).
% gols_sofridos(5).
% gols_feitos(2).
% % fatos para evitar predicado não definido
% jogador(carlos).
% tecnico(t1).
% discute(nenhum, nenhum).
% cartao_vermelho(nenhum).
% lento(nenhum).
% faltou_do_treino(nenhum).
% salarios(parcial).

% ---- Situação E (extra): esperado -> [nenhum] ----
% preparo_fisico(bom).
% gols_sofridos(1).
% gols_feitos(2).
% salarios(em_dia).
% % fatos para evitar predicado não definido
% jogador(carlos).
% tecnico(t1).
% discute(nenhum, nenhum).
% cartao_vermelho(nenhum).
% lento(nenhum).
% faltou_do_treino(nenhum).