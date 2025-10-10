function MyButton() {
    const [isClicked, setIsClicked] = React.useState(false);
    return React.createElement("button", {onClick: ()=> setIsClicked(!isClicked) },
                                isClicked ? "Clicked" : "Click me"); 
}

const domContainer = document.querySelector("#root");
const root = ReactDOM.createRoot(domContainer);
root.render(React.createElement(MyButton));