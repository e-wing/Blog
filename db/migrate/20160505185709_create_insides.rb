class CreateInsides < ActiveRecord::Migration
  def change
    create_table :insides do |t|

      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
