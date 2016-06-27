class CreateOutsides < ActiveRecord::Migration
  def change
    create_table :outsides do |t|
      t.string :title
      t.text :body
      t.timestamps null: false
    end
  end
end
