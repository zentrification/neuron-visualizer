class CreateNeurons < ActiveRecord::Migration
  def change
    create_table :neurons do |t|
      t.string :label
      t.text :note

      t.timestamps
    end
  end
end
