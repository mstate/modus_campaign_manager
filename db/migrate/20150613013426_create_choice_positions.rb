class CreateChoicePositions < ActiveRecord::Migration
  def change
    create_table :choice_positions do |t|
      t.references :choice_set, index: true
      t.references :choice_position, index: true
      t.references :choice, index: true

      t.timestamps
    end
  end
end
