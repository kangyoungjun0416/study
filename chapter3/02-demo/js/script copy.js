//console.log(document.querySelector("#colorPicker").value);
//alert(document.querySelector("#colorPicker").value); 
//document.querySelector("#colorText").textContent =
//"<h1>컬러코드 : </h1>" + document.querySelector("#colorPicker").value;

const text = document.querySelector("#colorText");
const color = document.querySelector("#colorPicker");

text.textContent = `컬러코드 : ${color.value}`;

const colorBg = () => {
    if(color.value == '#ffffff'){
    text.textContent = `컬러코드 : (white)${color.value}`;
    }
    else if(color.value == '#000000'){
        text.textContent = `컬러코드 : (black)${color.value}`;
    }
    else{
        text.textContent = `컬러코드 : ${color.value}`;
    }
       document.body.style.backgroundColor = color.value;
}

color.addEventListener('input',colorBg)