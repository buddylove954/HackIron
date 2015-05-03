class CreateOwns < ActiveRecord::Migration
  def change
    create_table :owns do |t|
      t.belongs_to :manager, index: true
      t.belongs_to :event, index: true
      t.timestamps null: false
    end
  end
end
