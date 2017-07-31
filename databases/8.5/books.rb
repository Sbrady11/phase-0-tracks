require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("books.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS books(
		id INTEGER PRIMARY KEY,
		title VARCHAR(255),
		pages INT
	);
SQL

db.execute(create_table_cmd)

db.execute("INSERT INTO books (title, pages) VALUES ('Lord of the Flies', 200)")

def create_book(db, title, pages)
	db.execute("INSERT INTO books (title, pages) VALUES (?,?)", [title, pages])

end

100.times do
	create_book(db, Faker::Name.title, Faker::Number.between(100,3000))
end


