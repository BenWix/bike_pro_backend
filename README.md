### Bike Shop Pro
Bike shop pro is a modern application help bike shops track the maintenance of their customer's bikes. It uses a modern framework that includes a RESTful API built with Ruby on Rails that utilizes mySQL and ActiveRecord. The front end uses React to create a responsive design and Redux to handle the global state management. 

![Screen Shot of Bike Shop Pro](https://i.imgur.com/ZeaQi5l.jpg)

The user of Bike Shop Pro can log new customers, customer's bike, info on the customer's bike, and the repairs on said bikes. Helping to provide an accurate representation of when maintenance should be performed so that bikes can keep riding their best!

## Running Bike Shop Pro
This back end API is designed to be used with the following repo 

https://github.com/BenWix/bike_pro_frontend

The above repo has the front end that will utilize this API.

To start this api, download the repo and navigate to the directory. Run bundle to install all necessary gems then run 

```rails s -p 3001```

this will start the server on localhost:3001, which is the address that the front end will attempt to access for the API
