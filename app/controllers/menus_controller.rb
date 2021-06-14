class MenusController < ApplicationController
  def new
    @menu = Menu.new
  end
  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      flash[:success] = "Object successfully created"
      redirect_to menus_path
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  def index
    @menus = Menu.all
  end
  def edit
    @menu = Menu.find(params[:id])
  end
  def update
    @menu = Menu.find(params[:id])
      if @menu.update(menu_params)
        flash[:success] = "Object was successfully updated"
        redirect_to menus_path
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  def destroy
    @menu = Menu.find(params[:id])
    if @menu.destroy
      flash[:success] = 'Object was successfully deleted.'
      redirect_to menus_path
    else
      flash[:error] = 'Something went wrong'
      redirect_to menus_path
    end
  end
  
  private
  def menu_params
    params.require(:menu).permit(:title, :money, :time, :memo, :image)
  end
end
