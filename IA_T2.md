# Inteligência Artificial - 2025/2
**Professora:** Heloisa  
**Trabalho:** Segundo Trabalho - Algoritmo de Encadeamento para Trás em Prolog  

---

## 1. Objetivo

O objetivo deste trabalho é implementar, em Prolog, um sistema baseado em lógica para identificar problemas com um time de futebol usando o algoritmo de encadeamento para trás. A Base de Conhecimento (BC) baseada em lógica está definida abaixo com sentenças da lógica de primeira ordem.

---

## 2. Base de Conhecimento (BC) em Lógica de Primeira Ordem

1. $\text{Preparo\_fisico}(\text{Ruim}) \rightarrow \text{Problema}(\text{Preparo\_fisico})$
2. $\text{Atritos}(\text{Constantes}) \wedge \text{Situação\_psicológica}(\text{Ruim}) \rightarrow \text{Problema}(\text{Equipe\_técnica})$
3. $\text{Preparo\_fisico}(\text{Bom}) \wedge \text{Atritos}(\text{Raros}) \wedge \text{Situação\_de\_gols}(\text{Ruim}) \rightarrow \text{Problema}(\text{Time})$
4. $\text{Atritos}(\text{Constantes}) \wedge \text{Salarios}(\text{Atrasados}) \rightarrow \text{Problema}(\text{Insatisfação\_financeira})$
5. $\text{Preparo\_fisico}(\text{Bom}) \wedge \text{Situação\_de\_gols}(\text{Boa}) \wedge \text{Salarios}(\text{Em\_dia}) \rightarrow \text{Problema}(\text{Nenhum})$
6. $\forall x, y \, (\text{Jogador}(x) \wedge \text{Tecnico}(y) \wedge \text{Discute}(x, y) \rightarrow \text{Atritos}(\text{Constantes}))$
7. $\forall x, y \, (\text{Jogador}(x) \wedge \text{Jogador}(y) \wedge \text{Discute}(x, y) \rightarrow \text{Atritos}(\text{Constantes}))$
8. $\exists x \, (\text{Jogador}(x) \wedge \text{Suspenso}(x) \rightarrow \text{Situação\_psicológica}(\text{Ruim}))$
9. $\forall x, y \, (\text{Gols\_sofridos}(x) \wedge \text{Gols\_feitos}(y) \wedge \text{Maior}(x, y) \rightarrow \text{Situação\_de\_gols}(\text{Ruim}))$
10. $\forall x, y \, (\text{Gols\_sofridos}(x) \wedge \text{Gols\_feitos}(y) \wedge \neg\text{Maior}(x, y) \rightarrow \text{Situação\_de\_gols}(\text{Boa}))$
11. $\forall x \, (\text{Cartão\_vermelho}(x) \rightarrow \text{Suspenso}(x))$
12. $\forall x \, (\text{Jogador}(x) \wedge \text{Lento}(x) \rightarrow \text{Preparo\_fisico}(\text{Ruim}))$
13. $\forall x \, (\text{Jogador}(x) \wedge \text{Faltou\_do\_treino}(x) \rightarrow \text{Preparo\_fisico}(\text{Ruim}))$

---

## 3. Situações Iniciais Específicas

### Situação Inicial A:
- $\text{Preparo\_fisico}(\text{Bom})$
- $\text{Jogador}(\text{Jorge})$
- $\text{Cartão\_vermelho}(\text{Jorge})$
- $\exists x \, (\text{Tecnico}(x) \wedge \text{Discute}(\text{Jorge}, x))$

### Situação Inicial B:
- $\exists x \, \text{Tecnico}(x)$
- $\text{Gols\_sofridos}(1)$
- $\text{Gols\_feitos}(2)$
- $\text{Salarios}(\text{Atrasados})$
- $\text{Jogador}(\text{Lucas})$
- $\text{Lento}(\text{Lucas})$
- $\exists x, y \, (\text{Jogador}(x) \wedge \text{Jogador}(y) \wedge \text{Discute}(x, y))$

### Situação Inicial C:
- $\exists x \, (\text{Jogador}(x) \wedge \text{Cartão\_vermelho}(x))$
- $\text{Gols\_sofridos}(3)$
- $\text{Gols\_feitos}(5)$

---

## 4. Requisitos do Trabalho (Faça)

- A transformação das sentenças da lógica para o formato de cláusula definida de primeira ordem, eliminando os quantificadores universal ($\forall$) e existencial ($\exists$).
- A implementação em Prolog da base de conhecimento que contém as sentenças definidas.  
  *Nota:* Lembre-se de inserir, na regra 7, uma condição que verifica se o jogador $x$ é diferente do jogador $y$ ($x \neq y$).
- Execuções do programa Prolog com pelo menos três situações iniciais específicas diferentes, de forma que todos os problemas possíveis sejam identificados em pelo menos uma delas.  
  *Nota:* Lembre-se de adicionar todos os fatos necessários para evitar o erro de "predicado não definido".

---

## 5. Entregáveis

- **Relatório (PDF ou Word):** Contendo as sentenças transformadas e os resultados da execução do programa Prolog com três situações iniciais diferentes.
- **Código-fonte Prolog (`.pl`):** Incluindo as cláusulas de todas as situações iniciais específicas usadas nas execuções. A cada execução, cláusulas que não pertencem à situação inicial considerada devem ser comentadas.
- **Vídeo (10 a 15 minutos):** Com a explicação do funcionamento do programa e exemplos de execução. Se o trabalho for feito em dupla, os dois membros da dupla devem participar do vídeo.

---

## 6. Observações Gerais

- Usar, obrigatoriamente, o **SWI-Prolog**;
- O trabalho pode ser realizado em duplas.