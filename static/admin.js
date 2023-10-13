

const host = document.getElementById('logoutBtn').getAttribute('host');
const form = document.getElementById('addBookForm');
const authorsContainer = document.getElementById('authors');
let authorsArray = [];


function logOut() {
    fetch("/admin/logout", { method: "GET" })
        .then(response => {
            if (response.status === 401) {
                window.location.href = host + '/api/v1/';
            } else throw new Error("Log Out error!");
        })
        .catch(error => console.error(error))

}

function addAuthor() {
    let value = form.querySelector(`[name="author"]`).value;
    if (value !== '') {
        authorsContainer.innerText += ` ${value} `;
        authorsArray.push(value);
    }
    form.querySelector(`[name="author"]`).value = '';
}

function addNewAuthor() {
    addAuthor();
}

document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('addBookForm');
    const addResult = document.getElementById('add-result');

    document.getElementById('input-check').addEventListener('click', (e) => {
        if (validationInputs().length > 0) {
            e.preventDefault();
            addResult.innerText = 'Check failed';
            addResult.style.color = 'red';
        }
        else {
            addResult.innerText = 'Check passed';
            addResult.style.color = 'green';
            let str = authorsArray.join();
            form.querySelector(`[name="author"]`).value = str;
        }
    });

    form.addEventListener('submit', (e) => {
        if (validationInputs().length > 0)
            e.preventDefault();
    });

    function validationInputs() {

        const inputs = ['title', 'yearBook', 'isbn', 'pages', 'description'];

        let inputsValues = [];
        for (let i = 0; i < inputs.length; i++) {
            let newObj = { inputName: '', valueInput: '' | [] };
            newObj = {
                inputName: inputs[i],
                valueInput: form.querySelector(`[name="${inputs[i]}"]`).value
            }
            inputsValues.push(newObj);
        }
        inputsValues.push({ inputName: 'authors', valueInput: authorsArray });       // authors

        const result = inputsValues.map(input => {
            switch (input.inputName) {
                case 'title':
                    return (input.valueInput.length > 3 && input.valueInput.length <= 100)
                        ? true : { input, errMessage: 'Please, enter a valid title.' };
                case 'yearBook':
                    return (!isNaN(input.valueInput) && Number(input.valueInput) > 1000
                        && Number(input.valueInput) <= new Date().getFullYear() && input.valueInput !== 4)
                        ? true : { input, errMessage: 'Please, enter a valid book year.' };
                case 'pages':
                    return (input.valueInput.length > 0 && input.valueInput.length <= 5 && !isNaN(input.valueInput))
                        ? true : { input, errMessage: 'Please, enter a valid number of pages.' };
                case 'description':
                    return (input.valueInput.length > 5 && input.valueInput.length <= 2000)
                        ? true : { input, errMessage: 'Please, enter a valid description.' };
                case 'isbn':
                    return (/[0-9-]+/.test(input.valueInput))
                        ? true : { input, errMessage: 'Please, enter a valid ISBN.' };
                case 'authors':
                    let res1 = input.valueInput.map(elem => {
                        return /[a-zA-Zа-яА-Я\s\.]+/.test(elem.toLowerCase());
                    });
                    return res1.every(el => el === true) ? true : { input, errMessage: 'Please, enter a valid author.' };
            }
        });
        let res = result.filter(element => { return element !== true; });

        if (res.length > 0) {
            res.map(el => {
                document.getElementById(`${el.input.inputName}-feedback`).innerText = el.errMessage;
                document.getElementById(`${el.input.inputName}-feedback`).style.color = 'red';
                document.getElementById(el.input.inputName).style.color = 'red';
            });
        }
        return res;
    }
});

function showImageBook() {
    let imageInput = document.getElementById('image-input');
    let imgCont = document.getElementById('img-container');

    if (imageInput.files[0]) {

        let f = new FileReader();
        f.onload = function (event) {
            let image = document.createElement('img');
            imgCont.appendChild(image);
            image.src = event.target.result;
            image.style.display = 'inline-block';
            image.style.width = '100px';
        }
        f.readAsDataURL(imageInput.files[0]);
    } else {
        document.getElementById('image-feedback').innerText = "Please, enter valid image";
        document.getElementById('image-feedback').style.color = 'red';
    }
}

async function deleteBook(bookId) {
    try {
        const response = await fetch("/admin/delete/" + bookId, {
            method: "POST"
        });
        const result = await response.json();

        let answer = confirm(`Do you want to delete book: "${result.title}" of the author('s)  ${result.authorsNames}?`);

        console.log(answer);
        if (answer === false) {
            fetch("/admin/cancelDeleting/" + bookId, {
                method: "POST"
            });
        } else {
            window.location.href = host + '/admin/';
        }
    } catch (error) {
        console.error("Error:", error);
    }
}