class CreateWord < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word
      t.string :sorted_letters
      t.timestamps
    end
  end
end
