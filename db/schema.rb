# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120119214307) do

  create_table "neurons", :force => true do |t|
    t.string   "label"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "postsynaptic_terminals", :force => true do |t|
    t.string   "label"
    t.text     "notes"
    t.integer  "neuron_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "postsynaptic_terminals", ["neuron_id"], :name => "index_postsynaptic_terminals_on_neuron_id"

  create_table "presynaptic_terminals", :force => true do |t|
    t.string   "label"
    t.text     "notes"
    t.integer  "neuron_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "presynaptic_terminals", ["neuron_id"], :name => "index_presynaptic_terminals_on_neuron_id"

  create_table "synapses", :force => true do |t|
    t.string   "label"
    t.text     "notes"
    t.float    "x"
    t.float    "y"
    t.float    "z"
    t.integer  "postsynaptic_terminal_id"
    t.integer  "presynaptic_terminal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "synapses", ["postsynaptic_terminal_id"], :name => "index_synapses_on_postsynaptic_terminal_id"
  add_index "synapses", ["presynaptic_terminal_id"], :name => "index_synapses_on_presynaptic_terminal_id"

end
