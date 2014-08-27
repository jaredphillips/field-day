class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :date
      t.string :location
      t.string :image_url
      t.text :description

      t.timestamps
    end
  end
end
