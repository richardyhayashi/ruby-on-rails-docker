# Ruby On Rails App Docker

## Create Ruby On Rails App

`$ rails new src`   # Default: sqlite
`$ rails new src --database=postgresql`
`$ rails new src --database=mysql`  # Also for mariadb

### Set in config/database.yml

#### PostgreSQL

`default: &default`<br>
`   adapter: postgresql`
`   encoding: unicode`
`   pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>`
`   host: <%= ENV['DB_HOST'] %>`<br>
`   port: <%= ENV['DB_PORT'] %>`<br>
`   username: <%= ENV['DB_USERNAME'] %>`<br>
`   password: <%= ENV['DB_PASSWORD'] %>`<br>
`development:`<br>
`   ...`<br>
`   database: <%= ENV['DB_NAME'] %>`<br>
`test:`<br>
`   ...`<br>
`   database: <%= ENV['DB_TEST'] %>`<br>

#### MySQL

`default: &default`<br>
`   adapter: mysql2`<br>
`   encoding: utf8mb4`<br>
`   pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>`<br>
`   host: <%= ENV['DB_HOST'] %>`<br>
`   port: <%= ENV['DB_PORT'] %>`<br>
`   database: <%= ENV['DB_NAME'] %>`<br>
`   username: <%= ENV['DB_USERNAME'] %>`<br>
`   password: <%= ENV['DB_PASSWORD'] %>`<br>
`development:`<br>
`   <<: *default`<br>
`test:`<br>
`   <<: *default`<br>
`   #database: <%= ENV['DB_TEST'] %>`<br>

### MariaDB

`default: &default`<br>
`   adapter: mysql2`<br>
`   encoding: utf8mb4`<br>
`   pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>`<br>
`   host: <%= ENV['DB_HOST'] %><br>
`   port: <%= ENV['DB_PORT'] %><br>
`   database: <%= ENV['DB_NAME'] %><br>
`   username: <%= ENV['DB_USERNAME'] %><br>
`   password: <%= ENV['DB_PASSWORD'] %><br>
`development:`<br>
`   <<: *default`<br>
`test:`<br>
`   <<: *default`<br>
`   #database: <%= ENV['DB_TEST'] %>`<br>

## Run Development Server

`$ rails server`
