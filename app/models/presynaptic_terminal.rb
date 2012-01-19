class PresynapticTerminal < ActiveRecord::Base
  belongs_to :neuron
  has_one :synapse

  validates :label, :neuron, :presence => true
end
