module Todo
  # TodoItem represents a todo item it is primarily used as a structured container
  # for todo information
  class TodoItem
    attr_accessor :description, :line_number
  
    def initialize(todo, options = {})
      @description = todo
      @line_number = options[:line_number]
    end
  
    # Represents the todo item as a string with the line number taking up 3 spaces
    # and the description immediately following it
    def to_s
      "[#{"% 3d" % (line_number)}] #{description}"
    end
  end
end