class AddEndTimeToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :end_time, :time
  end
end
