import './App.css';
import React, {useState, useEffect } from 'react'
import { Routes, Route, Link} from "react-router-dom"
import Home from './Components/Home'
import ActivityContainer from './Components/ActivityContainer'
// import {FaStar} from 'react-icons/fa'


function App() {

  const [activityList, setActivityList] = useState([])
  useEffect(() => {
    fetch('/activities')
    .then (r => r.json())
    .then(setActivityList)
  }, []) 

  return (
    <div className="App">
      <h1>PERSONLAIZE FITNESS</h1>

      <nav>
        <ul className='nav-link'>
          <li> <Link to='/'> Home </Link> </li>
          <li> <Link to='/activities'> Activities </Link> </li>
        </ul>
      </nav>

      <Routes>
        <Route path= '/' element= {<Home/>} />
        <Route path= '/activities' element= {<ActivityContainer activityList={activityList} />} />
      </Routes>
    </div>
  );
}

export default App;
