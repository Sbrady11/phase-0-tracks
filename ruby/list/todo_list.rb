class ToDoList
	def initialize(items)
		@items = items
	end

	def get_items
		@items
	end

	def add_item(item)
		@items.push(item)
	end

	def delete_item(item)
		@items.delete(item)
	end

	def get_item(item_index)
		@items[item_index]
	end 
end
