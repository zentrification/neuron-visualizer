class CreatePostsynapticTerminalTypes < ActiveRecord::Migration
  def change
    create_table :postsynaptic_terminal_types do |t|
      t.string :label
    end
    add_column :postsynaptic_terminals, :postsynaptic_terminal_type_id, :integer
    add_index :postsynaptic_terminals, :postsynaptic_terminal_type_id
  end
end
