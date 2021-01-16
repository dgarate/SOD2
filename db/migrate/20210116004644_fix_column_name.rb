class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :responsibilities, :type, :resp_type
  end
end
