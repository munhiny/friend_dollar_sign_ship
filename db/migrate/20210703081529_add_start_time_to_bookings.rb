class AddStartTimeToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :start_time, :time
  end
end
