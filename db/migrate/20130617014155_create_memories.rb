class CreateMemories < ActiveRecord::Migration
  def change
    create_table :memories do |t|
      t.string :title
      t.date :date
      t.text :memory

      t.timestamps
    end
  end
end
