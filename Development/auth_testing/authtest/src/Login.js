import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import { useHistory } from 'react-router-dom'
import axios from 'axios';
import './App.css';


function LoginPage() {
  const [email_input, set_email_input] = useState('');
  const [password_input, set_password_input] = useState('');
  const [error, set_error] = useState(false);
  const history = useHistory();

  const handleRegister = () => {
    const data = { email: email_input, password: password_input };
    console.log('Sending request...\nMethod: POST\nData:', data);
    axios.post('http://127.0.0.1:3001/login', data).then((resp) => {

      // Navigate user to profile page
      if (resp.status == 200) {
         history.push('/profile');
      } else {
        console.log("Something went wrong")
      }
      
      console.log(`Done! \nStatus: ${resp.status}`)
    });
  }


  return (
    <div className="body">
      <div>
        <h1>Login</h1>
        <label>Email:</label>
        <input value={email_input} onInput={e => set_email_input(e.target.value)}/>
        <label>Password:</label>
        <input value={password_input} onInput={e => set_password_input(e.target.value)}/>
        { error && <p className='errormsg'>{error}</p> }
        <div onClick={() => handleRegister()}>
          <p className='submit' >Submit</p>
        </div>
      </div>
    </div>
  );
}

export default LoginPage;
