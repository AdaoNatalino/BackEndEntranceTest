# BackEndEntranceTest

Hello ! You are about to do a test at entrance for OrangeMaple. There is some prerequisites to make it possible to us to evaluate you.

 - You will need docker and docker-compose
 - You will need Git and a GitHub account
 
You first have to clone this repository by typing

```
git clone https://github.com/OrangeMaple22/BackEndEntranceTest.git
```

After you created this repository, you will create a fork and when the work is finished you will be able to send the link of your test.
Then, you will need to install the container with this command :
```
docker-compose build
```
And that is done ! You know just have to run this command to start to work
```
docker-compose up
```
When you updated some files, you can just launch this function to update the docker 
```
docker-compose restart ruby_app
```
The binded port for the API you will create are 5000 and 5050 (same on your localhost and inside the docker)

## I] The Test
It consists on creating a little sercer as a RESTful Api, the container is runned with rails, but you can use every gems you want, if you want to add some, you can update the Gemfile, and run this commands :
```
docker run --rm -v "$PWD":/usr/src/app -w /usr/src/app ruby:2.5 bundle install
docker-compose build
```
\
You start from file app.rb in src, you have to create one file per methods.
\
You will implement those 5 REST methods :

- PATCH
- PUT
- DELETE
- GET
- POST

\
\
POST :
```
The post method will take a body to create a simple user, with first name and last name, age and height.
Each new user will have an ID that will be just 1 more than the previous (don't take care about deleted users, you can increment even after a delete).
Respond with 200 on success.
If there is not all the information, or if there is too much information, you have to respond with error.
A body will look like this (JSON file) :
{
  "first_name" : "blabla",
  "last_name" : "blabla",
  "age" : 26,
  "height" : 183
}
```
GET :
```
The get method will respond with all the users, just send a JSON file with an **ARRAY** of all users in a JSON format.
Respond with 200 on success.
```
DELETE :
```
The delete method will take a JSON file like this :
{
  "first_name": "blabla",
  "last_name" : "blabla"
}
There will be at least one field.
If there is more than one user corresponding, you will delete all of them.
Invalid field or unfindable user with respond with error.
Respond with success will be 201
```
PATCH :
```
The patch method will only take one field of the user, and his id. IE :
{
  "id" : 7,
  "first_name": "new blabla"
}
This will update the specified user field
Respond with success will be 200.
If the user with the id doesn't exists or if there is more than one field, respond with error.
```
PUT :
```
The put method will take **ALL** the fields of the users and his id. IE :
{
  "id" : 7
  "first_name" : "blabla",
  "last_name" : "blabla",
  "age" : 26,
  "height" : 183
}
If a field is missing, id doesn't exists, or there is too much fields, respond with error
This method will update all the data of the users.
Respond with success will be 200
```
You have to create the server from the beginning, the only constraint is that you have to use port 5000 or 5050 (as you want).
\
You will use mongoDB, so these are the function you will use :
```
Client : Create a new client (working with localhost:27017, binded by the docker)
Insert : Insert a new document in the database
Find : Find a specified document
Remove : Remove a document in the database
Update : Update specified field(s) in specified document
```
If you have any questions, feel free to ask !
Good luck !
\
\
Good to know :
```
The objectives of the test is to understand how you structure
your code with specific rules.
The language we use inside the company is Crystal Language.
We then will have a talk about how you handle all of this.
```
Optionnal work :

You can try to code this little server with the clean architecture design pattern. It will be taken at additionnal points for your work.
