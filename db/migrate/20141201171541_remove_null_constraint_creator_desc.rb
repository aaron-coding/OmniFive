class RemoveNullConstraintCreatorDesc < ActiveRecord::Migration
  def change
    change_column :users, :creator_desc, :string
  end
end
