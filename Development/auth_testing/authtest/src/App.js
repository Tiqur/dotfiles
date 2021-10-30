import { BrowserRouter, Switch, Route } from 'react-router-dom';
import { Link } from 'react-router-dom';
import { useState } from 'react';
import RegisterPage from './Register';
import LoginPage from './Login';
import ProfilePage from './Profile';
import './App.css';

const handleLogout = () => {
  console.log("Handle logout");
}

function App() {
  const [isLoggedIn, setIsLoggedIn] = useState(false);
  const [userData, setUserData] = useState(false);

  return (
      <BrowserRouter>
        <div className='nav_container'>
          <p>{ isLoggedIn ? `Logged in as ${userData.email}` : 'You are not logged in :(' }</p>
          <nav className='nav'>
            <Link to='/login'>Login</Link>
            <Link to='/register'>Register</Link>
            <Link to='/profile'>Profile</Link>
            { isLoggedIn && <Link onClick={() => handleLogout()} to='/login'>Logout</Link> }
          </nav>
        </div>
        <Switch>
          <Route exact path='/' component={ProfilePage}/>
          <Route exact path='/register' component={RegisterPage}/>
          <Route exact path='/login' component={LoginPage}/>
          <Route exact path='/profile' component={ProfilePage}/>
        </Switch>
      </BrowserRouter>
  );
}

export default App;
