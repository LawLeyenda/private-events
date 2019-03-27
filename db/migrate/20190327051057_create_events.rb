class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :data_source_exists?
      
      
      t.timestamps
    end
  end
end
