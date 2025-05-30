import React, { useState, useEffect } from 'react';
import './App.css';
import Header from './components/Header';
import Fluxograma from './components/Fluxograma';
import disciplinasData from './disciplinas';

function App() {
  const [disciplinasCursadas, setDisciplinasCursadas] = useState([]);
  const [disciplinasDisponiveis, setDisciplinasDisponiveis] = useState([]);

  // Função para calcular a carga horária total do curso
  const calcularCargaHorariaTotal = () => {
    let total = 0;
    Object.values(disciplinasData).forEach(disciplina => {
      total += disciplina.cargaHoraria;
    });
    return total;
  };

  // Função para calcular a carga horária cursada
  const calcularCargaHorariaCursada = () => {
    let cursada = 0;
    disciplinasCursadas.forEach(codigo => {
      if (disciplinasData[codigo]) {
        cursada += disciplinasData[codigo].cargaHoraria;
      }
    });
    return cursada;
  };

  // Função para verificar se pode fazer estágio (50% da carga horária total)
  const podeFazerEstagio = () => {
    const cargaTotal = calcularCargaHorariaTotal();
    const cargaCursada = calcularCargaHorariaCursada();
    return (cargaCursada / cargaTotal) >= 0.5;
  };

  // Função para verificar se pode fazer TCC (70% da carga horária total)
  const podeFazerTCC = () => {
    const cargaTotal = calcularCargaHorariaTotal();
    const cargaCursada = calcularCargaHorariaCursada();
    return (cargaCursada / cargaTotal) >= 0.7;
  };

  // Função para verificar se todos os pré-requisitos de uma disciplina foram cursados
  const verificarPreRequisitos = (codigo) => {
    const disciplina = disciplinasData[codigo];
    if (!disciplina) return false;
    
    // Se não tem pré-requisitos, está disponível
    if (disciplina.preRequisitos.length === 0) return true;
    
    // Verifica se todos os pré-requisitos foram cursados
    return disciplina.preRequisitos.every(preReq => disciplinasCursadas.includes(preReq));
  };

  // Função para verificar se todos os co-requisitos de uma disciplina foram cursados ou estão disponíveis
  const verificarCoRequisitos = (codigo) => {
    const disciplina = disciplinasData[codigo];
    if (!disciplina) return false;
    
    // Se não tem co-requisitos, está disponível
    if (disciplina.coRequisitos.length === 0) return true;
    
    // Verifica se todos os co-requisitos foram cursados ou estão disponíveis
    return disciplina.coRequisitos.every(coReq => 
      disciplinasCursadas.includes(coReq) || verificarPreRequisitos(coReq)
    );
  };

  // Função para atualizar as disciplinas disponíveis
  const atualizarDisciplinasDisponiveis = () => {
    const disponiveis = [];
    
    Object.keys(disciplinasData).forEach(codigo => {
      // Se já foi cursada, não está disponível
      if (disciplinasCursadas.includes(codigo)) return;
      
      // Regras especiais para estágio e TCC
      if (codigo === 'estagio') {
        if (podeFazerEstagio()) {
          disponiveis.push(codigo);
        }
        return;
      }
      
      if (codigo === 'TCC_1') {
        if (podeFazerTCC()) {
          disponiveis.push(codigo);
        }
        return;
      }
      
      // Verifica pré-requisitos e co-requisitos para as demais disciplinas
      if (verificarPreRequisitos(codigo) && verificarCoRequisitos(codigo)) {
        disponiveis.push(codigo);
      }
    });
    
    setDisciplinasDisponiveis(disponiveis);
  };

  // Atualiza as disciplinas disponíveis quando as cursadas mudam
  useEffect(() => {
    atualizarDisciplinasDisponiveis();
    
    // Salva no localStorage
    localStorage.setItem('disciplinasCursadas', JSON.stringify(disciplinasCursadas));
  }, [disciplinasCursadas]);

  // Carrega as disciplinas cursadas do localStorage ao iniciar
  useEffect(() => {
    const savedDisciplinas = localStorage.getItem('disciplinasCursadas');
    if (savedDisciplinas) {
      setDisciplinasCursadas(JSON.parse(savedDisciplinas));
    } else {
      // Inicialmente, apenas as disciplinas sem pré-requisitos estão disponíveis
      const inicialmenteDisponiveis = [];
      Object.keys(disciplinasData).forEach(codigo => {
        const disciplina = disciplinasData[codigo];
        if (disciplina.preRequisitos.length === 0 && disciplina.coRequisitos.length === 0) {
          inicialmenteDisponiveis.push(codigo);
        }
      });
      setDisciplinasDisponiveis(inicialmenteDisponiveis);
    }
  }, []);

  // Função para lidar com o clique em uma disciplina
  const handleDisciplinaClick = (codigo) => {
    if (disciplinasCursadas.includes(codigo)) {
      // Se já está cursada, verifica se pode ser desmarcada
      // Uma disciplina só pode ser desmarcada se nenhuma disciplina cursada depende dela
      let podeDesmarcada = true;
      
      disciplinasCursadas.forEach(discCursada => {
        if (discCursada !== codigo) {
          const dependencias = disciplinasData[discCursada].preRequisitos;
          if (dependencias.includes(codigo)) {
            podeDesmarcada = false;
          }
        }
      });
      
      if (podeDesmarcada) {
        setDisciplinasCursadas(prev => prev.filter(disc => disc !== codigo));
      } else {
        alert("Não é possível desmarcar esta disciplina pois outras disciplinas cursadas dependem dela.");
      }
    } else if (disciplinasDisponiveis.includes(codigo)) {
      // Se está disponível, marca como cursada
      setDisciplinasCursadas(prev => [...prev, codigo]);
    } else {
      // Se não está disponível, mostra os pré-requisitos faltantes ou regras especiais
      if (codigo === 'estagio') {
        alert("Para cursar Estágio Supervisionado, você precisa ter concluído pelo menos 50% da carga horária total do curso.");
        return;
      }
      
      if (codigo === 'TCC_1') {
        alert("Para cursar TCC 1, você precisa ter concluído pelo menos 70% da carga horária total do curso.");
        return;
      }
      
      const preReqsFaltantes = disciplinasData[codigo].preRequisitos
        .filter(preReq => !disciplinasCursadas.includes(preReq))
        .map(preReq => disciplinasData[preReq].nome);
      
      const coReqsFaltantes = disciplinasData[codigo].coRequisitos
        .filter(coReq => !disciplinasCursadas.includes(coReq) && !disciplinasDisponiveis.includes(coReq))
        .map(coReq => disciplinasData[coReq].nome);
      
      let mensagem = "Esta disciplina não está disponível. ";
      
      if (preReqsFaltantes.length > 0) {
        mensagem += `\nPré-requisitos faltantes: ${preReqsFaltantes.join(", ")}`;
      }
      
      if (coReqsFaltantes.length > 0) {
        mensagem += `\nCo-requisitos faltantes: ${coReqsFaltantes.join(", ")}`;
      }
      
      alert(mensagem);
    }
  };

  return (
    <div className="App">
      <Header />
      <Fluxograma 
        disciplinas={disciplinasData}
        disciplinasCursadas={disciplinasCursadas}
        disciplinasDisponiveis={disciplinasDisponiveis}
        onDisciplinaClick={handleDisciplinaClick}
      />
    </div>
  );
}

export default App;
