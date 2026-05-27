// test_rps.js - pruebas básicas para rps.js
const rps = require('./rps');

console.log('Pruebas deterministas (todas las combinaciones):');
for (const player of rps.choices) {
  for (const computer of rps.choices) {
    const res = rps.determineWinner(player, computer);
    console.log(`Jugador=${player} | Computadora=${computer} ==> ${res.message}`);
  }
}

console.log('\nSimulación aleatoria de 5 rondas:');
for (let i = 1; i <= 5; i++) {
  const player = rps.randomChoice();
  const computer = rps.randomChoice();
  const res = rps.determineWinner(player, computer);
  console.log(`#${i} Jugador=${player} | Computadora=${computer} ==> ${res.message}`);
}
