class TodosController < ApplicationController
  def index
  	@todo_list = Todo.all
  end

  def delete
  	Todo.last.delete
  	redirect_to :action => 'index'
  end

  def add
  	Todo.create(:item => params[:todo_text])
  	redirect_to :action => 'index'
  end
end
