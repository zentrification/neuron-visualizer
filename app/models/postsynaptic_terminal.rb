class PostsynapticTerminal < ActiveRecord::Base
  belongs_to :neuron
  belongs_to :postsynaptic_terminal_type
  has_one :synapse

  validates :label, :neuron, :presence => true
end
