const cool = require('cool-ascii-faces')
const express = require('express')
const path = require('path')
const PORT = process.env.PORT || 5000

const { Pool } = require('pg');
const pool = new Pool({
  connectionString: "postgres://wwhmiddhrxhbrv:77b45dd41ea9cec7c088f4b3f0b956de82c35a0a839ad2df982a66ac9e4515aa@ec2-184-72-221-140.compute-1.amazonaws.com:5432/dct33ivp1i8p9s",
  ssl: true
});

express()
  .use(express.static(path.join(__dirname, 'public')))
.get('/employee', async (req, res) => {
    try {
      const client = await pool.connect()
      const result = await client.query('SELECT * FROM employee;');
      const results = { 'results': (result) ? result.rows : null};
      res.send(result.rows);
      client.release();
    } catch (err) {
      console.error(err);
      res.send("Error " + err);
    }
  })
.get('/account', async (req, res) => {
    try {
      const client = await pool.connect()
      const result = await client.query('SELECT * FROM account;');
      const results = { 'results': (result) ? result.rows : null};
      res.send(result.rows);
      client.release();
    } catch (err) {
      console.error(err);
      res.send("Error " + err);
    }
  })
.get('/customer', async (req, res) => {
    try {
      const client = await pool.connect()
      const result = await client.query('SELECT * FROM customer;');
      const results = { 'results': (result) ? result.rows : null};
      res.send(result.rows);
      client.release();
    } catch (err) {
      console.error(err);
      res.send("Error " + err);
    }
  })
.get('/position', async (req, res) => {
    try {
      const client = await pool.connect()
      const result = await client.query('SELECT * FROM position;');
      const results = { 'results': (result) ? result.rows : null};
      res.send(result.rows);
      client.release();
    } catch (err) {
      console.error(err);
      res.send("Error " + err);
    }
  })
.get('/security', async (req, res) => {
    try {
      const client = await pool.connect()
      const result = await client.query('SELECT * FROM security;');
      const results = { 'results': (result) ? result.rows : null};
      res.send(result.rows);
      client.release();
    } catch (err) {
      console.error(err);
      res.send("Error " + err);
    }
  })
.get('/transaction', async (req, res) => {
    try {
      const client = await pool.connect()
      const result = await client.query('SELECT * FROM transaction;');
      const results = { 'results': (result) ? result.rows : null};
      res.send(result.rows);
      client.release();
    } catch (err) {
      console.error(err);
      res.send("Error " + err);
    }
  })
app.get('/position/:assetCode', (req, res) => {
    ry {
      const client = await pool.connect()
      const result = await client.query('SELECT * FROM position WHERE assetCode = ?',
                                       req.params.assetCode);
      const results = { 'results': (result) ? result.rows : null};
      res.send(result.rows);
      client.release();
    } catch (err) {
      console.error(err);
      res.send("Error " + err);
    }
})

  .set('views', path.join(__dirname, 'views'))
  .set('view engine', 'ejs')
  .get('/', (req, res) => res.render('pages/index'))
  .get('/cool', (req, res) => res.send(cool()))
  .get('/times', (req, res) => res.send(showTimes()))
  .listen(PORT, () => console.log(`Listening on ${ PORT }`))