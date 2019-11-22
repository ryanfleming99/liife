class BookingsController < ApplicationController
    before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @lesson = Lesson.find(params[:lesson_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.date = Date.today
    @booking.lesson = Lesson.find(params[:lesson_id])
    @booking.user = current_user
    if @booking.save
      redirect_to profile_path, notice: 'Booking completed'
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

