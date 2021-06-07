class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :start_date
      t.date :end_date
      t.string :nights
      t.string :guests
      t.string :adults
      t.string :children
      t.string :infants
      t.string :status
      t.references :guest, index: true, foreign_key: { to_table: :users }
      t.string :currency
      t.decimal :payout_price
      t.decimal :security_price
      t.decimal :total_price

      t.timestamps
    end
  end
end
