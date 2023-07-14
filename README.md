
# event-scheduling

<a name="readme-top"></a>


# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 event scheduling](#event-scheduling)
  - [🛠 Built With ](#-built-with-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Usage](#usage)
  - [👥 Authors ](#-authors-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [📝 License](#-license)

# 📖 event-scheduling <a name="about-project"></a>

The application allows users to create events, book events, receive email notifications, integrate with payment providers, and cancel events.

## 🛠 Built With <a name="built-with"></a>

- Rails 7
- PostgreSQL
- tailwinduicss  

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.
### Prerequisites

- Install node package manager. [Download Node](https://nodejs.org/dist/v18.12.1/node-v18.12.1-x64.- Install [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- Install [Ruby version 3.1.2(2022-04-12 revision)](https://rubyinstaller.org/)
- Install [Visual Studio Code](https://code.visualstudio.com/download) or other code editor


### Setup

Open your vscode then

Open your terminal

Clone this repository to your desired folder

`https://github.com/melashu/event_scheduling_app.git`

cd `event_scheduling_app`

Run `bundler install`

Configure database.yml as of your environment

```ruby
default: &default
  adapter: postgresql

  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>

development:
  <<: *default
  database: lemon_backend
  adapter: postgresql
  encoding: unicode
  host: localhost
  port: <YOUR_PORT>
  encoding: unicode
  username: <YOUR_USERNAME>
  password: <YOUR_PASSWORD>

test:
  <<: *default
  database: lemon_test_backend
  host: localhost
  port: <YOUR_PORT>
  adapter: postgresql
  encoding: unicode
  username: <YOUR_USERNAME>
  password: <YOUR_PASSWORD>
```

Then 
Run `rails db:create db:migrate db:seed`

Run `bin/dev` on your terminal 


### Usage

After runing `bin/dev`
 
 On your browser user `localhost:5000` to acess regular users page 

 You can create user account and login to the page or 

 Use the following login information
  ``` 
    emial: user102@gmail.com
    password: 12345678
    
    ```

To access the admin page user 

`localhost:5000/admin` 

use the following login information
    ```
    emial: meshu.amare@gmail.com
    password: 12345678
    
    ```


## 👥 Authors <a name="authors"></a>

👤 Melashu Amare

- GitHub: [@melashu](https://github.com/melashu)
- Twitter: [@meshu102](https://twitter.com/meshu102)
- LinkedIn: [Melashu Amare](https://www.linkedin.com/in/melashu-amare/)


## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page.](https://github.com/melashu/event_scheduling_app/issues)

## ⭐️ Show your support <a name="support"></a>

Give a star if you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>











