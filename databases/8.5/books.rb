require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("books.db")

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS books(
		id INTEGER PRIMARY KEY,
		title VARCHAR(255),
		pages INT
	);
SQL

db.execute(create_table_cmd)

db.execute("INSERT INTO books (title, pages) VALUES ('Lord of the Flies', 200)")
