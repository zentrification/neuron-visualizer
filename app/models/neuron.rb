class Neuron < ActiveRecord::Base
  has_many :presynaptic_terminals
  has_many :postsynaptic_terminals

  validates :label, :presence => true
end
