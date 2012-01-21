class Synapse < ActiveRecord::Base
  belongs_to :postsynaptic_terminal
  belongs_to :presynaptic_terminal

  validates :label, :presence => true
end
