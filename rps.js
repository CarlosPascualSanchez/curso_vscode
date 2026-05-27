// rps.js - lógica de Piedra, Papel y Tijera (ES)
const choices = ['piedra', 'papel', 'tijera'];

function randomChoice() {
  return choices[Math.floor(Math.random() * choices.length)];
}

function determineWinner(player, computer) {
  const p = String(player).toLowerCase();
  const c = String(computer).toLowerCase();
  if (p === c) return { winner: 'empate', message: `Empate: ${p} vs ${c}` };

  const wins = {
    piedra: 'tijera',
    tijera: 'papel',
    papel: 'piedra'
  };

  if (wins[p] === c) {
    return { winner: 'jugador', message: `Gana jugador: ${p} vence a ${c}` };
  }
  return { winner: 'computadora', message: `Gana computadora: ${c} vence a ${p}` };
}

module.exports = { choices, randomChoice, determineWinner };
