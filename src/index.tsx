import { React, ReactDOM } from 'https://unpkg.com/es-react'

const App = () => <div>deno is awesome!</div>
ReactDOM.render(<App />, (window as any).document.querySelector('.root'))
