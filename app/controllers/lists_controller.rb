class ListsController < ApplicationController
  def new
    @list = List.new
    @lists = List.all
  end
  
  def create
    list = List.new(list_params)
    list.save
    redirect_to list_path(list.id)
  end

  def show
    @list = List.find(params[:id])  
  end

  def edit
  end
  
  def index
   
  end
  
  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to '/lists/new'
  end
  
  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
