const btn = document.getElementById('clickMe');
const msg = document.getElementById('message');

let count = 0;
btn.addEventListener('click', () => {
  count += 1;
  msg.textContent = `Clicked ${count} time${count === 1 ? '' : 's'}.`;
});