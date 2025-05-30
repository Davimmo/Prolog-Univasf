import React from 'react';
import './Periodo.css';
import Disciplina from './Disciplina';

const Periodo = ({ numero, disciplinas, disciplinasCursadas, disciplinasDisponiveis, onDisciplinaClick }) => {
  return (
    <div className="periodo">
      <div className="periodo-header">
        <h3>{numero}º Período</h3>
      </div>
      <div className="periodo-disciplinas">
        {disciplinas.map((disc) => {
          let status = 'indisponivel';
          if (disciplinasCursadas.includes(disc.codigo)) {
            status = 'cursada';
          } else if (disciplinasDisponiveis.includes(disc.codigo)) {
            status = 'disponivel';
          }
          
          return (
            <Disciplina
              key={disc.codigo}
              codigo={disc.codigo}
              nome={disc.nome}
              cargaHoraria={disc.cargaHoraria}
              status={status}
              onClick={() => onDisciplinaClick(disc.codigo)}
              periodo={numero}
            />
          );
        })}
      </div>
    </div>
  );
};

export default Periodo;
