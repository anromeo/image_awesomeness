class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_name
      t.string :photo
      t.integer :memory_id

      t.timestamps
    end
  end
end
