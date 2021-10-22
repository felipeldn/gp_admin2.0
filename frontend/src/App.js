import React from 'react';
import HeaderContent from './containers/Header.js'
import Main from './containers/Main.js'
import Footer from './containers/Footer.js'
import './style/App.css';
// import './index.css'

function App() {
  return (
    <div className="App">
        <HeaderContent/>
        <Main/>
        <Footer/>
    </div>
  );
}

export default App;
