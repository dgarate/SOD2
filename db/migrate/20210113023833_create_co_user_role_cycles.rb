class CreateCoUserRoleCycles < ActiveRecord::Migration[6.0]
  def change
    create_table :co_user_role_cycles do |t|
      t.references :company, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true
      t.references :cycle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
