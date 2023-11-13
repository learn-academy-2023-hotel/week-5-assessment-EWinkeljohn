# ASSESSMENT 5: Interview Practice Questions

Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. What does it mean to implement a TDD workflow?

Your answer:

TDD is an acronym for test-driven development. TDD workflow refers to when a developer utilizes testing (such as in jest or rspec) when writing out their code. Watching failing tests and then writing the code to make them pass is a best practice for many situations.

Researched answer:

TDD is described as writing tests, watching them fail, writing the code to make the test pass, and watching the test pass. This ensures that the test and the code are inectricably linked, and encourages developers to think about the code in a more logical way. One implementation of TDD is known as the red-green-refactor, where once the test passes the developer refactors the code to be cleaner and/ore more efficient. 
TDD differs from BDD (behavior-driven development) because while TDD checks the input and output of the code, BDD makes sure that the code will behave as expected for the user. Jest utilizes TDD and RSpec utilizes BDD. 

2. What is a relational database? Are there other kinds of databases?

Your answer:

A relational database has primary keys (columns) that correspond to unique instances (rows) in a table. There are likely many examples of databases. 

Researched answer:

A relational database resembles a table with rows and columns. The columns of a relationshal database describe the structre, while the rows consist of entries into the database. A database instance is another way of referring to the database rows. A database table refers to a singluar set of rows and columns, and a database can contain several tables that are connected somehow. A schema refers to a visualization of the database including descriptions of the columns and data type within them. Because it is possible that multiple entries in the table have the same data, the database will have a column containing a primary key which ensure that each entry to the database are recognized as unique from one another. The other three types of databases in SQL other than relational are heirarchical. non-relational and object-
oriented. NoSQL databases are databases that use any system other than SQL. NoSQL databses include doucment and graph databases. 

3. Why is an ORM?

Your answer: ORM stands for Object Relational Mapping. It is a way of manipulating a relational database. 

Researched answer:

ORM is essentially a translator between two programming languages. It converts data between the two incompatible systems by using the shared object-oriented approach. For example, Rails is written in Ruby while PostgreSWL uses SQL. Developers can use the Ruby gem Active Record, which is a Rails ORM allowing developers to interact with a database as if it were a Ruby object. 


4. STRETCH: What is the difference between inheritance in JavaScript and inheritance in Ruby?

Researched answer: 

Ruby is an object-oriented language where everything is a class. Inheritance is an important piece of OOP because it allows developers to reuse parts of code from one class by having a super class and sub classes. On the other hand, JavaScript objects are linked to a prototype object. When accessing a property of an object in JacaScript, the property is searched for throughout the prototype chain. Classes and constructors can be used to set the prototype object for every new object in JavaScript, rather than using __proto__ for each new instance that we want to inherit those properties. Long story short, inheritance in Ruby is class-based while inheritance in JavaScript is prototypal. 

## Looking Ahead: Terms for Next Week

Research and define the following terms to the best of your ability.

1. Model validations: Model validations are in place to ensure that only clean and valid data is entered into the database. If an error is returned when Rails runs model validations prior to adding content, the content will not be saved. Test specifications (specs) are necessary to define what information is necessary for the app to app, as well as how the models will be used in the Rails app. 

2. Params: The controller of a Rails application helps guide how the user, the views, and the model interact. By passing parameters (params) to the controller, developers can make the app more dynamic. Using params allow developers to pass information into the application route rather than the URL. 

3. API: An application programming interface (API) is an application with only the backend: controllers and model with no view. APIs transmit data in the form of JavaScript Object Notation (JSON). JSON is modeled after JavaScript and is supported by many programming languages. An API has an endpoint, which is created when coding the flow of communication to an API using the correct route to the controller method. APIs do not have a user interface, so backend developers can use data visualization tools such as Postman to ensure that their code is working properly. 
