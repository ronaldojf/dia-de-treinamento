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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150512234949) do

  create_table "eventos", force: true do |t|
    t.string   "nome"
    t.integer  "vagas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inscricoes", force: true do |t|
    t.integer  "pessoa_id"
    t.integer  "evento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "participou", default: true, null: false
  end

  add_index "inscricoes", ["evento_id"], name: "index_inscricoes_on_evento_id", using: :btree
  add_index "inscricoes", ["pessoa_id"], name: "index_inscricoes_on_pessoa_id", using: :btree

  create_table "pessoas", force: true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "empresa"
    t.string   "instituicao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
