class RemoveEndTimeFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :end_time, :date
  end
end
