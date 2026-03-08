// Filename - App.js
import React, { useState, useRef, useEffect } from "react";

const App = () => {

  const Ref = useRef(null);          // interval reference
  const inputRef = useRef(null);     // input focus reference
  const timeLeft = useRef(10);       // timer value stored in ref

  const [timer, setTimer] = useState("00:10");
  const [answer, setAnswer] = useState("");
  const [submitted, setSubmitted] = useState(false);

  // start timer
  const startTimer = () => {
    Ref.current = setInterval(() => {

      if (timeLeft.current <= 0) {
        clearInterval(Ref.current);
        alert("Time's up");
        handleSubmit();
        return;
      }

      timeLeft.current -= 1;

      let minutes = Math.floor(timeLeft.current / 60);
      let seconds = timeLeft.current % 60;

      setTimer(
        String(minutes).padStart(2,"0") +
        ":" +
        String(seconds).padStart(2,"0")
      );

    }, 1000);
  };

  // on page load
  useEffect(() => {
    inputRef.current.focus(); // autofocus
    startTimer();

    return () => clearInterval(Ref.current);
  }, []);

  // submit
  const handleSubmit = () => {
    setSubmitted(true);
    clearInterval(Ref.current);
    if (answer.trim()!==""){
      alert("Answer submitted");

    }
    else{
      alert("Not answered");
    }
  };

  return (
    <div>

      <h2>Timer: {timer}</h2>

      <h3>Question:</h3>
      <p>What is React?</p>

      <input
        ref={inputRef}
        type="text"
        value={answer}
        disabled={submitted}
        onChange={(e)=>setAnswer(e.target.value)}
      />

      <br/><br/>

      <button onClick={handleSubmit} disabled={submitted}>
        {submitted ? "Submitted" : "Submit"}
      </button>
      {submitted && answer.trim()!="" && (
        <>
          <h2>Your answer</h2>
          <p>{answer}</p>
        </>
      )}
    </div>

  );
};

export default App;