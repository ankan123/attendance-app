class AddCheckinAndCheckoutToAttendances < ActiveRecord::Migration[7.1]
  def change
    add_column :attendances, :checkin, :datetime
    add_column :attendances, :checkout, :datetime
  end
end
