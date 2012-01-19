class Synapse < ActiveRecord::Base
  belongs_to :presynaptic_terminal
  belongs_to :postsynaptic_terminal
end
