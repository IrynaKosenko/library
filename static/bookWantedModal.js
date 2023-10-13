/**
 * This file describes the logic of calling and displaying 
 * a modal window with information about the availability of a book.
 */
const modal = document.getElementById('modal-window');

function clicksWanted(bookId) {
    fetch(`/book/wanted/${bookId}`, { method: 'GET' })
        .then(responce => {
            if (responce.status !== 200) {
                console.log('Error fetching')
            }
        })
        .catch(error => console.log('Error:', error));
    openModal(bookId);

}

function openModal(bookId) {
    modal.style.visibility = 'visible';
    modal.style.opacity = 1;
}

function closeModal() {
    modal.style.visibility = 'hidden';
    modal.style.opacity = 0;
}