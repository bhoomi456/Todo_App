class TodoListsController < ApplicationController

  def index
    @todo_lists = TodoList.all
  end

  def show 
  end

  def new
    @todo_lists = TodoList.new
  end

  def edit
  end

end
