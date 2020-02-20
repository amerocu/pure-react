
import React from "react";
import JSCounter from "./Counter";

import { jsCounter as PureCounter } from "../output/Counter.Interop"

function App() {
  return (
    <div>
      <h1>My App</h1>
      <JSCounter label="Count" />
      <PureCounter label="Clicks" />
      <PureCounter label={null} />
    </div>
  );
}

export default App;