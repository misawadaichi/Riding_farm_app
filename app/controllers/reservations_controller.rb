class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end
  def new
    @reservation = Reservation.new
    @menus = Menu.all
  end
  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      flash[:success] = "Object successfully created"
      redirect_to reservations_path
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  def edit
    @reservation = Reservation.find(params[:id])
    @menus = Menu.all
  end
  def update
    @reservation = Reservation.find(params[:id])
      if @reservation.update(reservation_params)
        flash[:success] = "Object was successfully updated"
        redirect_to reservations_path
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  
  private
  def reservation_params
    params.require(:reservation).permit(:menu_id).merge(user_id: current_user.id)
  end

end
