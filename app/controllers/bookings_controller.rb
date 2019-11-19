class BookingsController < ApplicationController
    before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    #redirect to
  end

  def destroy
    @booking.destroy
    #redirect to
  end

  private

  def set_booking
    @booking = booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date)
  end
end

