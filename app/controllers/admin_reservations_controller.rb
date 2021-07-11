class AdminReservationsController < ApplicationController
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
  
  private
  def reservation_params
    params.require(:reservation).permit(:start_time).merge(user_id: '1',menu_id: '1')
  end
end
