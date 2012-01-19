class CreatePostsynapticTerminals < ActiveRecord::Migration
  def change
    create_table :postsynaptic_terminals do |t|
      t.string :label
      t.text :notes
      t.references :neuron

      t.timestamps
    end
    add_index :postsynaptic_terminals, :neuron_id
  end
end
