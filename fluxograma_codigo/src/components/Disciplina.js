import React from 'react';
import './Disciplina.css';

const Disciplina = ({ codigo, nome, cargaHoraria, status, onClick, periodo }) => {
  const getStatusClass = () => {
    switch (status) {
      case 'cursada':
        return 'disciplina-cursada';
      case 'disponivel':
        return 'disciplina-disponivel';
      case 'indisponivel':
        return 'disciplina-indisponivel';
      default:
        return '';
    }
  };

  return (
    <div 
      className={`disciplina ${getStatusClass()}`} 
      onClick={onClick}
      title={`${nome} (${cargaHoraria}h)`}
    >
      <div className="disciplina-codigo">{codigo}</div>
      <div className="disciplina-nome">{nome}</div>
      <div className="disciplina-carga">{cargaHoraria}h</div>
    </div>
  );
};

export default Disciplina;
