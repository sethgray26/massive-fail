const express = require('express');
const bodyParser = require('body-parser');
const massive = require('massive');
const connectionString = 'postgres://YOUR_URL';

const app = express();
app.use(bodyParser.json());

const port = 3000;

app.post('/search', (req, res) => {
  const db = req.app.get('db');
  const name = req.body.name;
  db.query(
    "SELECT * FROM movies " +
    "WHERE title like '" + name + "'"
  ).then(results => {
    res.send(results);
  });
});

app.post('/login', (req, res) => {
  const db = req.app.get('db');
  const email = req.body.email;
  const password = req.body.password;
  db.getUser({ email: email }).then(users => {
    const user = users[0];
    if (user && user.password === password) {
      res.send("Welcome!");
    }
    else {
      res.status(401).send("Access Denied");
    }
  });
});

massive(connectionString).then(connection => {
  app.set('db', connection);

  app.listen(port, () => {
    console.log('Started server on port', port);
  });
});
