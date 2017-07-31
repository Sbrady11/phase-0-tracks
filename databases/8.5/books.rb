require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("books.db")

create_table_cmd = <<-SQL
	CREATE TABLE books(
		id INTEGER PRIMARY KEY,
		title VARCHAR(255),
		pages INT
	);
SQL

db.execute(create_table_cmd)
