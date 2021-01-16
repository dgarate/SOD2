class CreateResponsibilities < ActiveRecord::Migration[6.0]
  def change
    create_table :responsibilities do |t|
      t.string :name
      t.text :description
      t.string :type
      t.date :end_date

      t.timestamps
    end
  end
end
