class CreateHoges < ActiveRecord::Migration
  def change
    create_table :hoges do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
