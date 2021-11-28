const btnPopup = document.getElementById('btnPopup');
const overlay = document.getElementById('overlay');
btnPopup.addEventListener('click', openMoadl);
function openMoadl() {
  overlay.style.display = 'block';
}

var btnClose = document.getElementById('btnClose');
btnClose.addEventListener('click', closeModal);
function closeModal() {
  overlay.style.display = 'none';
  document.location.href = "/";
}
