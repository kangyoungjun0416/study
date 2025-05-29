const menu = document.querySelector('#menu');


let content = `<div><img src="images/strawberry.jpg" alt=""></div>`;
//menu.textContent = content;
menu.insertAdjacentHTML('beforeend', content); //마지막으로 추가
content = `<div><img src="images/apple.jpg" alt=""></div>`;
//menu.textContent = content;
menu.insertAdjacentHTML('afterbegin', content); //처음으로 추가
