class PresynapticTerminal < ActiveRecord::Base
  belongs_to :neuron
  belongs_to :presynaptic_terminal_type
  has_one :synapse

  validates :label, :neuron, :presence => true
end
