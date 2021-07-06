class RemoveStartTimeFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :start_time, :date
  end
end
