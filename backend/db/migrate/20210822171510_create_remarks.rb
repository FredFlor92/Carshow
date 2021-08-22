class CreateRemarks < ActiveRecord::Migration[6.1]
  def change
    create_table :remarks do |t|
      t.string :owner
      t.string :content

      t.timestamps
    end
  end
end
