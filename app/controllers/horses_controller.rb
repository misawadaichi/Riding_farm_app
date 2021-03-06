class HorsesController < ApplicationController
  def new
    @horse = Horse.new
  end

  def create
    @horse = Horse.new(horse_params)
    if @horse.save
      flash[:success] = "horse successfully created"
      redirect_to horses_path
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  def edit
    @horse = Horse.find(params[:id])
  end
  
  def update
    @horse = Horse.find(params[:id])
      if @horse.update(horse_params)
        flash[:success] = "horse was successfully updated"
        redirect_to horses_path
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end

  def index
    @horses = Horse.all
  end
  
  def destroy
    @horse = Horse.find(params[:id])
    if @horse.destroy
      flash[:success] = 'horse was successfully deleted.'
      redirect_to horses_path
    else
      flash[:error] = 'Something went wrong'
      redirect_to horses_path
    end
  end

  private
  def horse_params
    params.require(:horse).permit(:name, :variety, :sex, :color, :race_name, :birthday, :entry, :memo, :image)
  end
end
