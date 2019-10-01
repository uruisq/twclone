class CreateTws < ActiveRecord::Migration[5.2]
  def change
    create_table :tws do |t|
      t.text :content

      t.timestamps
    end
  end
end
