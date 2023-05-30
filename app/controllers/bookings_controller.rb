class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @toothbrush = Toothbrush.find(params[:toothbrush_id])
    @booking = Booking.new(booking_params)
    @booking.toothbrush = @toothbrush
    @booking.user = current_user

    if @booking.save
      @booking.status = "booked"
      redirect_to dashboard_path
    else
      render 'toothbrushes/show', status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
