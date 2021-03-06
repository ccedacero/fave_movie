# README

# FaveMovie

Welcome to the faveMovie API. This API will
allow you to search the The Open Movie Database for movies you like and save the ones you like locally by upvoting them.  

Watch demo [**here**](https://youtu.be/xY4ILK4LgxE).  
Live version [**here**](https://favemovie.herokuapp.com/).
## Features  
- Search for movies 
- Upvote/down vote movies(persists)
- Sort movies based on release date 
- See list of all movies that have received votes 
## Installation

Make sure Ruby is installed.

```
ruby -v
```

Ensure Rails is installed.

```
rails -v
```

**Back-end**

Clone this repo

```bash
git clone repo url
```

Open cloned location and install dependencies

```
bundle install
```

Create db and run migration

```
rails db:create
```

```
rails db:migrate
```

Start server

```
rails s
```

**Front-end**

Open index.html from app root directory

```
Open front_end/index.html
```

You're now ready to test out the API :) 

## Usage

![faveMovie API](http://g.recordit.co/madIOxpjzI.gif)

## License

[MIT](https://choosealicense.com/licenses/mit/)
