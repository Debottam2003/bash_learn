#___Installing Dependencies___
npm install

#___Running the Microservices___
node orders.js &
node users.js &
node catalogs.js &
node payments.js &

#___Running the API-gateway___
node app.js &

#___Testing the Microsevices___
#curl http://localhost:8888/users
#curl http://localhost:8888/catalogs
