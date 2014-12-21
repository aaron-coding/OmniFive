class AddDefaultEmail < ActiveRecord::Migration
  def change
    change_column :users, :email, :string, default: "default@gmail.com", null: false
  end
end
