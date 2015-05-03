class CreateOwns < ActiveRecord::Migration
  def change
    create_table :owns do |t|
      t.references :user, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
