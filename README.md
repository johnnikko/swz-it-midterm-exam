## Midterm Exam

#### 1. Explaining the purpose of the Gemfile?(10%)
    - Gemfile where the gem write and installed. 
    - Gem are like plugins in html such as bootstrap its a series of code ,ruby gems also codes that we only call when we need it.
    - and ones the gem installe the gem will add on gemfile lock include the exact versions of gem installed.
#### 2. Explaining the purpose and principle of the Migration?(10%)
    - Migration is where we define the table its collumns and datatypes in ruby code.
    - Migration is also used to modify our table.
    - and when we db:migrate the table appeared in schema.
#### 3. Explaining what is RESTful routes?(10%)
    - RESTful routes is the one provide interaction between http verb and Crud, if we want to create new the routes new routes and to 
      display one data we used show routes but if we want to display all data we used index routes and for update we used edit routes
      and for delete we used delete routes, RESTful routes make a specific/exact routes for every crud action. 
#### 4. Project
* create a private repo in github add ian74122@topskyweb.com into Collaborators(Settings->Collaborators)
* you need finish those tickets from 1 to 7 then bonus. create new tickets in your github issue board.
* Git commit message must be readable.
* Build a website for disaster relief.

1. It can post some information about disaster, include category(information about disaster, need , need help), title(single row input) and content(multiple row input) - 10% 
1. It can view posts with pagination include title and create time in the index page. - 10% 
1. User can write comments for every post.(one post has many comments) - 10% 
1. User can click one post in index page and it will show all the details and comments. - 10% 
1. User can register and login in the website(devise). - 10% 
1. User can delete his own posts and comments. - 10% 
1. User can edit his own post include title and content. - 10%

#### bonus
1. It can view posts with pagination include title, create time and count of comments in the index page. - 10% 
1. User can edit his own post include title and content, it will redirect to the correct page(For example, this post in page 3 ,it will redirect to page 3 after edit) - 10%