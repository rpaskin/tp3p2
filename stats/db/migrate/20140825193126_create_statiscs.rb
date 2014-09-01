class CreateStatiscs < ActiveRecord::Migration
  def change
    create_table :statiscs do |t|
      t.string :label
      t.string :sequence
      t.string :author
      t.int :max
      t.int :min
      t.int :avg
      t.int :sum
      t.string :lastName
      t.timestamps
    end
  end
end
