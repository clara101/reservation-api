class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :update, :destroy]

  # GET api/v1/reservations
  def index
    @reservation = Reservation.all

    render json: @reservation
  end

  # POST api/v1/reservations
  def create
    @reservation = Reservation.create(reservation_permitted_params)

    render json: @reservation, status: :created, location: @band
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reservation_permitted_params
      params.require(:reservation).permit(:start_date, :end_date, :nights, :guests, :adults, :children, :infants, :status,:guest_id, :currency, :payout_price, :security_price, :total_price)
    end
end
