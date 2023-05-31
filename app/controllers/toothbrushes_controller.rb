class ToothbrushesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @toothbrushes = Toothbrush.all
  end

  def show
    # @review = Review.new
    @toothbrush = Toothbrush.find(params[:id])
    @booking = Booking.new(toothbrush: @toothbrush)
  end

  def new
    @toothbrush = Toothbrush.new
  end

  def create
    @toothbrush = Toothbrush.new(toothbrush_params)
    @toothbrush.user = current_user
    if @toothbrush.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @toothbrush = Toothbrush.find(params[:id])
  end

  def update
    @toothbrush = Toothbrush.find(params[:id])
    @toothbrush.update(params[:toothbrush])
  end

  def destroy
    @toothbrush = Toothbrush.find(params[:id])
    @toothbrush.destroy
    redirect_to root_path
  end

  private

  def toothbrush_params
    params.require(:toothbrush).permit(:category, :content, :title, :price, :photo)
  end
end
