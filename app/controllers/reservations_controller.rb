class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
    from = Date.strptime(params[:start_date], '%Y-%m-%d')
    @reservations = Reservation.where('start_time >= ? and start_time < ?', from, from + 1)
    @p = params
  end
  def new
    @reservation = Reservation.new
    @menus = Menu.all
  end
  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      flash[:success] = "予約時間を設定しました"
      redirect_to reservations_path
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  def edit
    @reservation = Reservation.find(params[:id])
    
  end
  def update
    @reservation = Reservation.find(params[:id])
      if @reservation.update(reservation_params)
        flash[:success] = "予約しました"
        redirect_to reservation_path(@reservation.start_time.strftime("%Y-%m-%d"))
      else
        flash[:alert] = "メニューを選択してください"
        render 'edit', {reservation: @reservation}
      end
  end
  
  private
  def reservation_params
    params.require(:reservation).permit(:menu_id).merge(user_id: current_user.id, reserved: 1)
  end

end
