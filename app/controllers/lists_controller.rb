class ListsController < ApplicationController
  def index
    if user_signed_in?
      @lists = List.where(user_id: current_user.id)
    else
      redirect_to new_user_path
    end
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(name: params[:name], user_id: params[:user_id], archived: false)
    @list.save
  end

  def show
    @list = List.find(params[:id])
  end

  def destroy
    @list = List.find(params[:id])
    if @list.destroy
      redirect_to "/"
    else
      render :show, status: :unprocessable_entity
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    @list.name = params[:name]
    if @list.save
      redirect_to @list
    else
      render :edit, status: :unprocessable_entity
    end
  end
end
