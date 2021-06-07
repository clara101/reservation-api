class User < ApplicationRecord
  has_many :reservations, foreign_key: :guest_id
end
