class CreateAttends < ActiveRecord::Migration
  def change
    create_table :attends do |t|
      t.references :user, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true
      t.string :check_in_status, null: false
      t.timestamps null: false
    end
  end
end
