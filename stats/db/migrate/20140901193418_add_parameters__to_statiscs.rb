class AddParametersToStatiscs < ActiveRecord::Migration
  def change
    add_column :statiscs, :max, :int
    add_column :statiscs, :min, :int
    add_column :statiscs, :sum, :int
    add_column :statiscs, :avg, :int
    add_column :statiscs, :lastName, :string
  end
end
