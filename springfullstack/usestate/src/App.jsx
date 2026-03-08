import { useState } from 'react'
// import reactLogo from './assets/react.svg'
// import viteLogo from '/vite.svg'
import './App.css'


function App() {

  const [count, setCount] = useState(0)
  const[button_value,setButtonValue]=useState("on");
  const [name, setName] = useState("");
  const [color, setColor] = useState("white");
  const [likes, setLikes] = useState(0);

  const toggle= function f(){
    if(button_value==="on"){
      setButtonValue("off");
    } 
    else{
      setButtonValue("on");
    }
  }

  return (
    <>
      <button onClick={() => setCount((count) => count + 1)}>increase</button>
      <button onClick={() => setCount((count) => count - 1)}>decrease</button>
      <p>count is {count}</p>
      <button onClick={toggle}>{button_value}</button>
      <input type="text" placeholder="Enter name" onChange={(e) => setName(e.target.value)}/>
      <h2>Hello {name}</h2>
      <div style={{ backgroundColor: color, height: "200px" }}>
        <button onClick={() => setColor("red")}>Red</button>
        <button onClick={() => setColor("blue")}>Blue</button>
        <button onClick={() => setColor("green")}>Green</button>
      </div>
      <div>
        <button onClick={() => setLikes(likes + 1)}>
          ❤️ Like: {likes}
        </button>
    </div>
    </>
  )
}

export default App
