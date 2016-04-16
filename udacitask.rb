require_relative 'todolist.rb'

# Creates a new todo list
telsa = TodoList.new("Telsa's todo list")


# Add four new items
telsa.add_items("Learn English")
telsa.add_items("Learn Ruby/rails")
telsa.add_items("Learn Japanese")
telsa.add_items("Find a job")


# Print the list
puts ""
puts telsa.title
telsa.print_items


# Feature #1: <Save the list to a file, and load the list file if one already exists.>
telsa.write_to_file



# Delete the first item
telsa.del_item(telsa, 0)

# Print the list
puts ""
puts "Delete the first item"
puts telsa.title
telsa.print_items

# Delete the second item
telsa.del_item(telsa, 1)

# Print the list
puts ""
puts "Delete the second item"
puts telsa.title
telsa.print_items


# Update the completion status of the first item to complete
telsa.update_status(telsa, 0, true)

# Print the list
puts ""
puts "Update the completion status"
puts telsa.title
telsa.print_items

# Update the title of the list

telsa.title = "Telsa's todo list2"

# Print the list
puts ""
puts "Update the title of the list"
puts telsa.title
telsa.print_items

# Feature #2: <List not finish item>
telsa.not_finish_item(telsa)

#Feature #3: <Allow multiple users to create their own to-do lists.>
ayu = TodoList.new("Ayu's todo list")
ayu.add_items("Learn how to cook pasta")
ayu.add_items("Pass the test")
puts ""
puts ayu.title
ayu.print_items
