const menu = document.querySelector('#menu');

const lists = [
    'strawberry.jpg', //list[0]
    'lime.jpg', //list[2]
    'mango.jpg',
    'lemon.jpg',
    'fig.jpg',
    'apple.jpg', //list[5]
];
console.log(lists);

const content = `<div><img src="images/strawberry.jpg" alt=""></div>`;

menu.insertAdjacentHTML('beforeend', content);