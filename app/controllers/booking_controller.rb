class BookingController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @toothbrush = Toothbrush.find(params[:id])
    @bookmark = Bookmark.new(booking_params)
    @bookmark.toothbrush = @toothbrush

    if @bookmark.save
      redirect_to root_path
      @bookmark.status = "booked"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :toothbrushes_id)
  end
end
