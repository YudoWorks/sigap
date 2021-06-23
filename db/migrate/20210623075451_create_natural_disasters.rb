class CreateNaturalDisasters < ActiveRecord::Migration[6.1]
  def change
    create_table :natural_disasters do |t|
      t.string :name
      t.text :desc
      t.string :location

      t.timestamps
    end
  end
end
