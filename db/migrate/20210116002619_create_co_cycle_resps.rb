class CreateCoCycleResps < ActiveRecord::Migration[6.0]
  def change
    create_table :co_cycle_resps do |t|
      t.references :company, null: false, foreign_key: true
      t.references :cycle, null: false, foreign_key: true
      t.references :responsibility, null: false, foreign_key: true

      t.timestamps
    end
  end
end
