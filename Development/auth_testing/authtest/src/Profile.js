import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import axios from 'axios';
import './App.css';


function App() {
  const [email_input, set_email_input] = useState('');
  const [password_input, set_password_input] = useState('');

  return (
    <header className="body">
      <div>
        <h1>Profile</h1>
      </div>
    </header>
  );
}

export default App;
