class RemoveNullConstraintOnUsersDesc < ActiveRecord::Migration
  def change
    change_column :users, :creator_desc, :string, null: true
  end
end
