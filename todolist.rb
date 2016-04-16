class TodoList
    # methods and stuff go here
    attr_accessor :title, :items
    
    
    
    def initialize(list_title)
        @title = list_title
        @items = Array.new
    end
    
    def add_items(new_item)
        item = Item.new(new_item)
        @items.push(item)
    end
    
    def print_items
        @items.each do |item|
            puts "#{(@items.index(item))+1} description: #{item.description}   completed_status: #{item.completed_status}"
        end
    end
    
    def del_item(todolist, index)
        todolist.items.delete_at(index)
    end
    
    def update_status(todolist, index, status)
        todolist.items[index].completed_status = status
        
    end
    
    # Feature #1: <Save the list to a file, and load the list file if one already exists.>
    def write_to_file
        if File.exist?("todo1.txt")
            report_file = File.open("todo1.txt","a")
            @items.each do |item|
                report_file.puts "#{(@items.index(item))+1} description: #{item.description}   completed_status: #{item.completed_status}"
            end
            report_file.close
            
        else
            report_file = File.new("todo1.txt", "w+")
            @items.each do |item|
                report_file.puts "#{(@items.index(item))+1} description: #{item.description}   completed_status: #{item.completed_status}"
            end
        end
    end
   
    # Feature #2: <List not complete items>
    def completed?(status)
            status != true
    end
    
    def not_finish_item(todolist)
        todolist.items.each do |item|
            puts "Not finish item: #{item.description}" if completed?(item.completed_status)
        end
    end
            
    
    
end
    


class Item
    # methods and stuff go here
    attr_accessor :description, :completed_status, :due_date
    def initialize(item_description)
        @description = item_description
        @completed_status = false
    end
    
end
