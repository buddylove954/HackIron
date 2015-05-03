class CreateAttends < ActiveRecord::Migration
  def change
    create_table :attends do |t|
      t.belongs_to :guest, index: true
      t.belongs_to :event, index: true
      t.integer :status, null: false
      t.timestamps null: false
    end
  end
end
