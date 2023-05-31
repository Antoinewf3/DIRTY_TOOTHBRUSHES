class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @my_bookings = current_user.bookings
    @toothbrushes = current_user.toothbrushes
  end
end
