class CreateCarmeets < ActiveRecord::Migration[6.1]
  def change
    create_table :carmeets do |t|
      t.string :time
      t.string :date
      t.string :location
      t.string :title
      t.string :owner

      t.timestamps
    end
  end
end
