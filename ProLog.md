## Regras do ProLog
### 1. Letra maíuscula

O que começa com letra maiúscula em ProLog é *VARIÁVEL*.
Cuidado com a tentação de colocar nome com letra maiúscula, vai virar variável.

``` prolog
gosta(Pedro, leite).
```

---
 1) Preparo_fisico(Ruim) → Problema(Preparo_fisico)
   └── já é uma clásula definida
problema(preparo_fisico) :- preparo_fisico(ruim).
% Explicação:
% 'problema/1' é um predicado
% 'ruim' é uma constante (átomo)
% O primeiro 'preparo_fisico' é uma constante (átomo)
% O segundo 'preparo_fisico' é um predicado

1)
Preparo_físico(Ruim) → Problema(Preparo_físico)

2)
Atritos(Constantes) ∧ Situação_psicológica(Ruim) → Problema(Equipe_tecnica)

3)
Preparo_físico(Bom) ∧ Atritos(Raros) ∧ Situação_de_gols(Ruim) → Problema(Time)

4)
Atritos(Constantes) ∧ Salarios(Atrasados) → Problema(Insatisfação_financeira)

5)
Preparo_físico(Bom) ∧ Situação_de_gols(Boa) ∧ Salarios(Em_dia) → Problema(Nenhum)

6)
∀x,y [Jogador(x) ∧ Tecnico(y) ∧ Discute(x, y) → Atritos(Constantes)]

7)
∀x,y [Jogador(x) ∧ Jogador(y) ∧ Discute(x, y) → Atritos(Constantes)]

8)
∀x [Jogador(x) ∧ Suspenso(x) → Situação_psicologica(Ruim)]

9)
∀x,y [Gols_sofridos(x) ∧ Gols_feitos(y) ∧ Maior(x, y) → Situação_de_gols(Ruim)]

10)
∀x,y [Gols_sofridos(x) ∧ Gols_feitos(y) ∧ ¬Maior(x, y) → Situação_de_gols(Boa)]

11)
∀x [Cartão_vermelho(x) → Suspenso(x)]

12)
∀x [Jogador(x) ∧ Faltou_do_treino(x) → Preparo_físico(Ruim)]

13)
∀x [Jogador(x) ∧ Lento(x) → Preparo_físico(Ruim)]