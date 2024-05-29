const jsonData = {
    "id": "322",
    "category": "J",
    "type": "4",
    "image": "gvr_286a.jpg",
    "question": "Je rijdt 30 km/u. Wat doe je?",
    "feedback": "De bestuurder voor je rijdt jouw weghelft op. Je hebt geen ruimte om uit te wijken. Aan de andere kant staat een busje geparkeerd.  ",
    "options": [
        "0",
        "",
        ""
    ]
}
function renderData(data) {
    document.getElementById('id').innerText = data.id;
    document.getElementById('question').innerText = data.question;

    // Rendering list items
    const itemsList = document.getElementById('options');
    data.items.forEach(item => {
        const listItem = document.createElement('li');
        listItem.innerText = item;
        itemsList.appendChild(listItem);
    });
}