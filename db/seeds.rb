# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Neuron.delete_all
PresynapticTerminal.delete_all
PostsynapticTerminal.delete_all
Synapse.delete_all

(1..10).to_a.each { |x| Neuron.create :label => 'neuron' + x.to_s }
neurons = Neuron.all

(1..50).to_a.each do |x|
  a = PresynapticTerminal.new :label => 'axon' + x.to_s
  a.neuron = neurons.sample
  a.notes = 'hihihi' if rand(2) == 0
  a.save
  a = PostsynapticTerminal.new :label => 'dendrite' + x.to_s
  a.neuron = neurons.sample
  a.notes = 'bibbi' if rand(2) == 0
  a.save
end
post = PostsynapticTerminal.all
pre = PresynapticTerminal.all

(1..300).to_a.each do |x|
  a = Synapse.new :label => 'synapse' + x.to_s
  a.x = rand(1000) + rand(1000)
  a.y = rand(1000) + rand(1000)
  a.z = rand(1000) + rand(1000)
  a.presynaptic_terminal = pre.sample
  a.postsynaptic_terminal = post.sample
  a.notes = 'moooo' if rand(2) == 0
  a.save
end
