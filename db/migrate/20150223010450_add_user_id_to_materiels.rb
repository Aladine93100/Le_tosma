class AddUserIdToMateriels < ActiveRecord::Migration
  def change
    add_column :materiels, :user_id, :integer
  end
end
