# Planejamento do Layout do Fluxograma Interativo

## Estrutura Visual

O layout do site será baseado no fluxograma original, mantendo a organização por períodos (semestres) e a disposição visual das disciplinas. A estrutura será:

1. **Cabeçalho**: Título do fluxograma e instruções básicas de uso
2. **Legenda**: Explicação das cores (azul para cursadas, verde para disponíveis, vermelho para indisponíveis)
3. **Fluxograma**: Organizado em grid com 10 colunas (períodos) e disciplinas dispostas verticalmente em cada período
4. **Informações Adicionais**: Exibição de detalhes da disciplina ao passar o mouse (carga horária, pré-requisitos, co-requisitos)

## Componentes React

### Estrutura de Componentes

1. **App.js**: Componente principal que gerencia o estado global
   - Estado: disciplinas cursadas, disciplinas disponíveis
   - Lógica: verificação de pré-requisitos e co-requisitos

2. **Header.js**: Cabeçalho com título e instruções

3. **Legend.js**: Componente de legenda para explicar as cores

4. **Fluxograma.js**: Container principal do fluxograma
   - Organiza os períodos em colunas
   - Gerencia o layout responsivo

5. **Periodo.js**: Representa um período/semestre
   - Título do período
   - Container para as disciplinas do período

6. **Disciplina.js**: Componente para cada disciplina
   - Exibe nome, código e carga horária
   - Gerencia o estado visual (cursada, disponível, indisponível)
   - Manipula eventos de clique para marcar/desmarcar
   - Exibe tooltip com informações detalhadas

7. **InfoPanel.js** (opcional): Painel lateral ou modal para exibir informações detalhadas da disciplina selecionada

## Estilos e Cores

- **Disciplina Cursada**: Fundo azul (#3498db)
- **Disciplina Disponível**: Fundo verde (#2ecc71)
- **Disciplina Indisponível**: Fundo vermelho (#e74c3c)
- **Bordas e Conectores**: Linhas cinza (#95a5a6) para representar as conexões entre disciplinas
- **Texto**: Branco (#ffffff) para disciplinas coloridas, preto (#333333) para disciplinas não coloridas
- **Fundo**: Claro (#f9f9f9) para contraste com as disciplinas

## Layout Responsivo

- **Desktop**: Layout completo com todas as colunas visíveis
- **Tablet**: Scroll horizontal para navegar entre os períodos
- **Mobile**: 
  - Visualização de um período por vez com navegação por botões
  - Opção de visualização compacta

## Interatividade

1. **Clique na Disciplina**: 
   - Primeiro clique: Marca como cursada (azul)
   - Segundo clique: Desmarca (volta ao estado anterior)

2. **Hover/Toque**: 
   - Exibe tooltip com informações detalhadas
   - Destaca visualmente os pré-requisitos e co-requisitos

3. **Atualização Dinâmica**:
   - Ao marcar uma disciplina como cursada, todas as disciplinas que a têm como pré-requisito são reavaliadas
   - Disciplinas que se tornam disponíveis mudam de vermelho para verde

## Considerações Técnicas

1. **Gerenciamento de Estado**:
   - Usar useState e useEffect para gerenciar o estado das disciplinas
   - Implementar função de verificação de disponibilidade baseada na lógica do Prolog

2. **Renderização Condicional**:
   - Aplicar classes CSS dinamicamente com base no estado da disciplina

3. **Armazenamento Local**:
   - Salvar o estado das disciplinas cursadas no localStorage para persistência entre sessões

4. **Acessibilidade**:
   - Garantir contraste adequado para leitura
   - Implementar navegação por teclado
   - Adicionar textos alternativos e ARIA labels
