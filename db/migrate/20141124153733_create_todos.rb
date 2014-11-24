require_relative '../config'

class CreateTodos < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :tasks do |t|
      t.string :description
      t.integer :complete
      t.timestamps
    end
  end

end