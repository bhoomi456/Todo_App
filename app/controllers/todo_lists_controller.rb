class TodoListsController < ApplicationController
  before_action :set_todo_list, only: %i[show edit update destroy]

  def index
    @todo_lists = TodoList.all
  end

  def show
  end

  def new
    @todo_list = TodoList.new
  end

  def create
    @todo_list = TodoList.new(todo_lists_params)

    if @todo_list.save
      redirect_to todo_lists_path, notice: "Todo list created successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end


  def edit
  end

  def update
    if @todo_list.update(todo_lists_params)
      redirect_to todo_lists_path, notice: "Todo list updated successfully"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @todo_list.destroy

    redirect_to todo_lists_path,notice: "Todo list deleted successfully"
  end


  private

  def set_todo_list
    @todo_list = TodoList.find(params[:id])
  end

  def todo_lists_params
    params.require(:todo_list).permit(:name, :description)
  end
end
