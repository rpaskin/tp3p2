class AddFieldsToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :max, :int
    add_column :entries, :min, :int
    add_column :entries, :average, :float
    add_column :entries, :sum, :int
    add_column :entries, :lastName, :string
  end
end
