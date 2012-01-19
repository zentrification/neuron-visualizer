class CreateSynapses < ActiveRecord::Migration
  def change
    create_table :synapses do |t|
      t.string :label
      t.text :notes
      t.float :x
      t.float :y
      t.float :z
      t.references :presynaptic_terminal
      t.references :postsynaptic_terminal

      t.timestamps
    end
    add_index :synapses, :presynaptic_terminal_id
    add_index :synapses, :postsynaptic_terminal_id
  end
end
