
import React from "react";
import JSCounter from "./Counter";

import { counter as PureCounter } from '../output/Counter'

function App() {
  return (
    <div>
      <h1>My App</h1>
      <JSCounter label="Count" />
      <PureCounter label="Clicks" />
      <PureCounter label="Interactions" />
    </div>
  );
}

export default App;