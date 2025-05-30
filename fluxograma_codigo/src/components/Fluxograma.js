import React from 'react';
import './Fluxograma.css';
import Periodo from './Periodo';

const Fluxograma = ({ disciplinas, disciplinasCursadas, disciplinasDisponiveis, onDisciplinaClick }) => {
  // Agrupar disciplinas por período
  const disciplinasPorPeriodo = {};
  
  Object.keys(disciplinas).forEach(codigo => {
    const disc = disciplinas[codigo];
    const periodo = disc.periodo;
    
    if (!disciplinasPorPeriodo[periodo]) {
      disciplinasPorPeriodo[periodo] = [];
    }
    
    disciplinasPorPeriodo[periodo].push({
      codigo,
      nome: disc.nome,
      cargaHoraria: disc.cargaHoraria
    });
  });
  
  // Ordenar períodos
  const periodos = Object.keys(disciplinasPorPeriodo).sort((a, b) => a - b);
  
  return (
    <div className="fluxograma">
      {periodos.map(periodo => (
        <Periodo
          key={periodo}
          numero={periodo}
          disciplinas={disciplinasPorPeriodo[periodo]}
          disciplinasCursadas={disciplinasCursadas}
          disciplinasDisponiveis={disciplinasDisponiveis}
          onDisciplinaClick={onDisciplinaClick}
        />
      ))}
    </div>
  );
};

export default Fluxograma;
