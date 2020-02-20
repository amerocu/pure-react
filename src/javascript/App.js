
import React from "react";
import JSCounter from "./Counter";

import { jsCounter as PureCounter } from "../output/Counter.Interop"
import { jsCounter as PureCounterBasic } from "../output/CounterBasic.Interop"

function App() {
  return (
    <div>
      <h1>My App</h1>
      <JSCounter label="Count" />
      <PureCounter label="Clicks" />
      <PureCounterBasic label="Gools" />
    </div>
  );
}

export default App;