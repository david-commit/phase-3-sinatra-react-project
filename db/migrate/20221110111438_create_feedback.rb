class CreateFeedback < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :message
    end
  end
end
