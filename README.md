# rs-calendad backend

### Prerequirements
  * Install [MongoDB](https://docs.mongodb.com/manual/installation/)
  * Install [Elixir](http://elixir-lang.org/install.html)
  * Install [Phoenix Framework](http://www.phoenixframework.org/docs/installation)

### Installation
  * Download source code (You can download `zip` or `clone` this repo).
  * Go to project folder `cd rs-calendar-task`
  * Start MongoDB (if needed).
  * Fill database using [mongorestore](https://docs.mongodb.com/manual/reference/program/mongorestore/#bin.mongorestore) and files in `dump/` directory. In most common cases you should use following command


```sh
mongorestore --collection events --db rs-calendar dump/
mongorestore --collection trainers --db rs-calendar dump/
```

  * Install dependencies with `mix deps.get`
  * Start app with `mix phoenix.server`

Now application is available at [`localhost:4000`](http://localhost:4000).

Any contribution are welcome
