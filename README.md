# Ruby On Rails App Docker



## Create Ruby On Rails App

`$ rails new src`   # Default: sqlite
`$ rails new src --database=postgresql`
`$ rails new src --database=mysql`

### Set in config/database.yml

#### PostgreSQL

`default: &default`<br>
`   ...`<br>
`   host: <%= ENV['DB_HOST'] %>`<br>
`   port: <%= ENV['DB_PORT']>`<br>
`   username: <%= ENV['DB_USERNAME'] %>`<br>
`   password: <%= ENV['DB_PASSWORD'] %>`<br>
`development:`<br>
`   ...`<br>
`   database: <%= ENV['DB_NAME'] %>`<br>
`test:`<br>
`   ...`<br>
`   database: <%= ENV['DB_TEST'] %>`<br>

#### MySQL


#### Sqlite


## Run Development Server

`$ rails server`
