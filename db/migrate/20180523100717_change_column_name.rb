class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :flats, :number_of_gests, :number_of_guests
  end
end
