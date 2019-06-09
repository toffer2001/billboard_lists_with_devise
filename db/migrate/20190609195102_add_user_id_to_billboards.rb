class AddUserIdToBillboards < ActiveRecord::Migration[5.2]
  def change
    add_column :billboards, :user_id, :integer
  end
end
