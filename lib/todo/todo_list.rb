module Todo
  
  # TodoList is a container class for many TodoItems it includes methods for
  # adding todos, removing todos, and getting todos at a given index. It also
  # interacts with the filesystem to read and save the file
  class TodoList
    attr_accessor :todo_list, :file_location
  
    # Reads todos from a file if the file exists and sets up variables for the
    # class
    def initialize(file_location)
      @file_location = file_location
      @todo_list = []
      if File.exist? file_location
        File.open(@file_location).each_with_index do |line, line_number|
          @todo_list << TodoItem.new(line.chomp, {:line_number => line_number + 1})
        end
      end
    end
  
    # Appends a new todo to the list by getting next line number and then appending
    # the todo to the @todo_list
    def append(todo)
      todo.line_number = next_line_number()
      @todo_list << todo
      save_list()
    end
  
    # Removes a todo from the list
    def remove(todo)
      @todo_list.delete_at(todo.line_number - 1)
      update_todo_line_numbers()
      save_list()
    end
  
    # Gets a todo at an index if that index is a number.  If the index isn't a number
    # then nil is returned.  If there is no todo at an index nil is returned.
    def todo_at_index(index)
      begin
        index = Integer(index)
        index-=1
        @todo_list[index]
      rescue
        return nil
      end
    end
  
    # Represents the todo list as a String with each todo on its on line and the def the 
    # newest todo at the bottom of the list
    def to_s
      return "" if @todo_list.empty?
      return @todo_list.first.to_s if @todo_list.size == 1
      @todo_list.reduce { |todo, string|  "#{todo.to_s}\n#{string}" }
    end
  
    private
  
    def next_line_number
      return 0 if @todo_list.empty?
      @todo_list.last.line_number + 1
    end
  
    def update_todo_line_numbers
      @todo_list.each_with_index{ |todo, index| todo.line_number = index}
    end
  
    def save_list
      File.open(@file_location, "wb") do |file|
        @todo_list.each { |todo| file.write(todo.description + "\n")}
      end
    end
  end
end