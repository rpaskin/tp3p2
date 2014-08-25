class CreateStatiscs < ActiveRecord::Migration
  def change
    create_table :statiscs do |t|
      t.string :label
      t.string :sequence
      t.string :author

      t.timestamps
    end
  end
end
