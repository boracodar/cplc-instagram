import tingle from 'tingle.js';
import 'tingle.js/src/tingle.css';

document.addEventListener('DOMContentLoaded', () => {
  document.querySelectorAll("[data-modal-id]").forEach(button => {
    button.addEventListener("click", (event) => {
      event.preventDefault();

      const modal = new tingle.modal({
        closeMethods: ['overlay', 'escape'],
        cssClass: ['instagram-modal'],
      });

      const modalContent = document.querySelector(`#${button.dataset.modalId}`).innerHTML;

      modal.setContent(modalContent);
      modal.open();
    });
  });
});
