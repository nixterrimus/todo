require 'spec_helper'

describe "todo_list" do
  
  describe "#initialize" do
    context "when no todo.txt file exists" do
      it "should create an empty list of todos" do
        list = Todo::TodoList.new("todo.txt")
        list.todo_list.should be_empty
      end
    end
    
    context "when a todo.txt file exists" do
      it "should populate the todo_list from the file" do
        flunk
      end
    end
  end
  
  describe "#append" do
    it "should set the line number to the next largest number" do
      flunk
    end
    
    it "should add the todo from the argument to the todo_list" do
      flunk
    end
    
    it "should save the todo file" do
      flunk
    end
  end 
  
  describe "#remove" do
    it "should remove the argumented todo from the list" do
      flunk
    end
    
    it "should update the numbers of the other todos" do
      flunk
    end
    
    it "should save the todo file" do
      flunk
    end
  end
  
  describe "#todo_at_index" do
    it "should return the correct todo when the index is valid" do
      flunk
    end
    
    it "should return nil when the index is not a number" do
      flunk
    end
    
    it "should return nil when the index does not contain a todo" do
      flunk
    end
  end
  
  describe "#to_s" do
    it "should return an empty string when there are no todos" do
      flunk
    end
    
    it "should return a string with one todo when there is one todo in the list" do
      flunk 
    end
    
    it "should return an a string of ordered todos when there are many toods in the list" do
      flunk
    end
  end
  
  
end