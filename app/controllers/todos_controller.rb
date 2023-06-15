class TodosController < ApplicationController
  def home
    @todos = Todo.all
    render json: {"todos": @todos}
  end

  def new
    @todo = Todo.new
    render json: {"todo": @todo}
  end

  def edit
    @todo = Todo.find(params[:id])
    render json: {"todo": @todo}
  end

  def create
    @todo = Todo.new(todo_params)
    if(@todo.save)
      render json: {"todo": @todo}
    end  
  end

  def update
    @todo = Todo.find_by(params[:title])
    
    if @todo.update(todo_params)
      render json: { "todo": @todo }
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    render json: {"todo": @todo}, status: :no_content
  end

  def todo_params
    params.require(:todo).permit(:title)
  end
end
