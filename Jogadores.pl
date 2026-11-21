% ===== BASE DE CONHECIMENTO =====
% Com as cláusulas de primeira ordem
% 1) Preparo_fisico(Ruim) → Problema(Preparo_fisico)
problema(preparo_fisico) :- preparo_fisico(ruim).

% 2) Atritos(Constantes) ∧ Situação_psicológica(Ruim) → Problema(Equipe_tecnica)
problema(equipe_tecnica) :- atritos(constantes), situacao_psicologica(ruim).

% 3) Preparo_físico(Bom) ∧ Atritos(Raros) ∧ Situação_de_gols(Ruim) → Problema(Time)
problema(time) :- preparo_fisico(bom), atritos(raros), situacao_de_gols(ruim).

% 4) Atritos(Constantes) ∧ Salarios(Atrasados) → Problema(Insatisfação_financeira)
problema(insatisfacao_financeira) :- atritos(constantes), salarios(atrasados).

% 5) Preparo_físico(Bom) ∧ Situação_de_gols(Boa) ∧ Salarios(Em_dia) → Problema(Nenhum)
problema(nenhum) :- preparo_fisico(bom), situacao_de_gols(boa), salarios(em_dia).

% 6) ∀x,y [Jogador(x) ∧ Tecnico(y) ∧ Discute(x, y) → Atritos(Constantes)]
atritos(constantes) :- jogador(X), tecnico(Y), discute(X, Y).

% 7) ∀x,y [Jogador(x) ∧ Jogador(y) ∧ Discute(x, y) → Atritos(Constantes)]
atritos(constantes) :- jogador(X), jogador(Y), X \= Y, discute(X, Y).

% 8) ∀x [Jogador(x) ∧ Suspenso(x) → Situação_psicologica(Ruim)]
situacao_psicologica(ruim) :- jogador(X), suspenso(X).

% 9) ∀x,y [Gols_sofridos(x) ∧ Gols_feitos(y) ∧ Maior(x, y) → Situação_de_gols(Ruim)]
situacao_de_gols(ruim) :- gols_sofridos(X), gols_feitos(Y), maior(X, Y).

% 10) ∀x,y [Gols_sofridos(x) ∧ Gols_feitos(y) ∧ ¬Maior(x, y) → Situação_de_gols(Boa)]
situacao_de_gols(boa) :- gols_sofridos(X), gols_feitos(Y), menor_ou_igual(X, Y).

% 11) ∀x [Cartão_vermelho(x) → Suspenso(x)]
suspenso(X) :- cartao_vermelho(X).

% 12) ∀x [Jogador(x) ∧ Faltou_do_treino(x) → Preparo_físico(Ruim)]
preparo_fisico(ruim) :- jogador(X), faltou_do_treino(X).

% 13) ∀x [Jogador(x) ∧ Lento(x) → Preparo_físico(Ruim)]
preparo_fisico(ruim) :- jogador(X), lento(X).

% Auxílios:
maior(X, Y) :- X > Y.
menor_ou_igual(X, Y) :- X =< Y.

% ===== FATOS =====
