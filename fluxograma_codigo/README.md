# Fluxograma Interativo - Engenharia da Computação UNIVASF

Este site permite visualizar e gerenciar o fluxograma do curso de Engenharia da Computação da UNIVASF de forma interativa.

## Funcionalidades

- Visualização do fluxograma completo do curso, organizado por períodos
- Marcação de disciplinas como cursadas (clique na disciplina)
- Desmarcação de disciplinas (clique novamente)
- Visualização dinâmica de disciplinas disponíveis (verde) e indisponíveis (vermelho)
- Verificação automática de pré-requisitos e co-requisitos
- Armazenamento local das disciplinas cursadas (persistência entre sessões)

## Como usar

1. **Visualização**: O fluxograma está organizado por períodos (semestres), da esquerda para a direita.

2. **Cores das disciplinas**:
   - **Azul**: Disciplinas já cursadas
   - **Verde**: Disciplinas disponíveis para cursar
   - **Vermelho**: Disciplinas indisponíveis (pré-requisitos ou co-requisitos não atendidos)

3. **Interação**:
   - Clique em uma disciplina para marcá-la como cursada
   - Clique novamente para desmarcá-la (se possível)
   - Ao passar o mouse sobre uma disciplina, são exibidas informações adicionais

4. **Regras de pré-requisitos e co-requisitos**:
   - Uma disciplina só fica disponível quando todos os seus pré-requisitos foram cursados
   - Para co-requisitos, a disciplina fica disponível se o co-requisito já foi cursado ou está disponível
   - Uma disciplina não pode ser desmarcada se alguma disciplina cursada depende dela como pré-requisito

## Detalhes técnicos

Este site foi desenvolvido em React e implementa a lógica de pré-requisitos e co-requisitos baseada no código Prolog original do fluxograma.

O estado das disciplinas cursadas é salvo no localStorage do navegador, permitindo que você retorne ao site posteriormente e continue de onde parou.

## Créditos

Baseado no fluxograma e código Prolog do curso de Engenharia da Computação da UNIVASF.
