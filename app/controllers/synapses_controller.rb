class SynapsesController < ApplicationController
  inherit_resources

  def new
    @presynaptic_terminal = PresynapticTerminal.new
    @postsynaptic_terminal = PostsynapticTerminal.new
    new!
  end
end
