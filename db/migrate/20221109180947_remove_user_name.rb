class RemoveUserName < ActiveRecord::Migration[6.1]
  def change
    remove_column :appointments, :user_name, :string
  end
end
