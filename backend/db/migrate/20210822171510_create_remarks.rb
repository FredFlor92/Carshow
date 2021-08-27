class CreateRemarks < ActiveRecord::Migration[6.1]
  def change
    create_table :remarks do |t|
      t.string :owner
      t.string :content
      t.belongs_to :meet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
