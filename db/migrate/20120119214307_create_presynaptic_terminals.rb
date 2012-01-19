class CreatePresynapticTerminals < ActiveRecord::Migration
  def change
    create_table :presynaptic_terminals do |t|
      t.string :label
      t.text :notes
      t.references :neuron

      t.timestamps
    end
    add_index :presynaptic_terminals, :neuron_id
  end
end
