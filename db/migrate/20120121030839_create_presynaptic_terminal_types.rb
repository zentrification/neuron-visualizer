class CreatePresynapticTerminalTypes < ActiveRecord::Migration
  def change
    create_table :presynaptic_terminal_types do |t|
      t.string :label
    end
    add_column :presynaptic_terminals, :presynaptic_terminal_type_id, :integer
    add_index :presynaptic_terminals, :presynaptic_terminal_type_id
  end
end
