import React from 'react';
import './Header.css';

const Header = () => {
  return (
    <header className="header">
      <h1>Fluxograma Interativo - Engenharia da Computação UNIVASF</h1>
      <div className="instrucoes">
        <p>Clique nas disciplinas para marcá-las como cursadas. Clique novamente para desmarcá-las.</p>
        <div className="legenda">
          <div className="legenda-item">
            <div className="legenda-cor cursada"></div>
            <span>Disciplinas Cursadas</span>
          </div>
          <div className="legenda-item">
            <div className="legenda-cor disponivel"></div>
            <span>Disciplinas Disponíveis</span>
          </div>
          <div className="legenda-item">
            <div className="legenda-cor indisponivel"></div>
            <span>Disciplinas Indisponíveis</span>
          </div>
        </div>
      </div>
    </header>
  );
};

export default Header;
