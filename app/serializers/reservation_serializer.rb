class ReservationSerializer < ActiveModel::Serializer
  attributes :start_date, :end_date, :nights, :guests, :adults, :children, :infants, :status, :guest, :currency, :payout_price, :security_price, :total_price
  belongs_to :guest, class_name: "User"

end
