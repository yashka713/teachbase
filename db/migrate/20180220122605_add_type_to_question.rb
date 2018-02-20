class AddTypeToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :type, :integer, default: 1
  end
end
