class ChangeColumnInTable < ActiveRecord::Migration[6.1]
  def change
    change_column(:projects, :description, :text)
    rename_column(:projects, :state, :status)
  end
end
