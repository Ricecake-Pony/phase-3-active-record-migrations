# First, we connect to a database, then write the necessary SQL to create the table. So, first, we'd have to connect to a database:

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/artists.sqlite"
)

# Below creates a new table in AR using SQL:
sql = <<-SQL
  CREATE TABLE IF NOT EXISTS artists (
  id INTEGER PRIMARY KEY,
  name TEXT,
  genre TEXT,
  age INTEGER,
  hometown TEXT
  )
SQL

ActiveRecord::Base.connection.execute(sql)

# To tell Active Record how to connect to the database from here on out, we'll use a config/database.yml file. 