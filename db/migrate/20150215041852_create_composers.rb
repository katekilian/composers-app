class CreateComposers < ActiveRecord::Migration
  def change
    create_table :composers do |t|
      t.string :name
      t.integer :birth_year
      t.integer :death_year
      t.string :era

      t.timestamps null: false
    end
  end
end
