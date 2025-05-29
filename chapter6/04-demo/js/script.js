const heading = document.querySelector('#heading');

const keyframes = {
  opacity: [0, 1],
  translate: ['-200px 0px', 0],
  color:['blue', 'red'],
};
const options = {
  duration: 2000,
  easing: 'ease',
};

heading.animate(keyframes, options);