import './App.css';
import axios from 'axios';
import {useState,useEffect } from 'react';

function App() {

  const [users,setUsers] = useState([]);

  useEffect(() => {
    axios
    .get(
      "/api/rest/data/msg"
    )

    .then((res) => {
      console.log(res);
      setUsers(res.data.messages);
    });
    console.log(users);
  },[]);

  return (
    <div className="App">
        
        {users.map((user) => (
          <li>  {user.id} ,{user.user_id} {users.room_id} ,{user.message} ,{user.created_at}</li>
         
        ))}
        
    </div>
  );

}



export default App;