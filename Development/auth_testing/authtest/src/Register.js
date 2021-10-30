import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import { useHistory } from 'react-router-dom'
import axios from 'axios';
import './App.css';


function RegisterPage() {
  const [email_input, set_email_input] = useState('');
  const [password_input, set_password_input] = useState('');
  const [password_input2, set_password_input2] = useState('');
  const [error, set_error] = useState(false);
  const history = useHistory();

  const handleRegister = () => {
    const data = { email: email_input, password: password_input, password2: password_input2 };
    console.log('Sending request...\nMethod: POST\nData:', data);
    axios.post('http://127.0.0.1:3001/register', data).then((resp) => {
      
      // Navigate to login page
      if (resp.status == 201) {
         history.push('/login');
      } else {
        console.log("Something went wrong")
      }

      console.log(`Done! \nStatus: ${resp.status}`)
    });
  }

  return (
    <div className="body">
      <div>
        <h1>Register</h1>
          <label>Email:</label>
          <input value={email_input} onInput={e => set_email_input(e.target.value)}/>
          <label>Password:</label>
          <input value={password_input} onInput={e => set_password_input(e.target.value)}/>
          <label>Confirm Password:</label>
          <input value={password_input2} onInput={e => set_password_input2(e.target.value)}/>
          { error && <p className='errormsg'>{error}</p> }
        <div onClick={() => handleRegister()}>
          <p className='submit' >Submit</p>
        </div>
      </div>
    </div>
  );
}

export default RegisterPage;
