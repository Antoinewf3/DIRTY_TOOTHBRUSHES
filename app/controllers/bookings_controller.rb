class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @toothbrush = Toothbrush.find(params[:toothbrush_id])
  end

  def create
    @toothbrush = Toothbrush.find(params[:toothbrush_id])
    @booking = Booking.new(booking_params)
    @booking.toothbrush = @toothbrush
    @booking.user = current_user

    @booking.status = "pending"
    if @booking.save
      redirect_to dashboard_path
    else
      render 'toothbrushes/show', status: :unprocessable_entity
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.update(status: "rented")
    redirect_to dashboard_path, notice: "Your toothbrush is booked !"
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.update(status: "available")
    redirect_to dashboard_path, notice: "Your toothbrush is available !"
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
