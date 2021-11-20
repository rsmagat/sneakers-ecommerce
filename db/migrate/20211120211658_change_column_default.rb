class ChangeColumnDefault < ActiveRecord::Migration[6.1]
  def change
    change_column_null :customers, :province_id, true
  end
end
