class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :choosable_type
      t.integer :choosable_id
      t.integer :choice_type
      t.string :result
      t.string :goto_name
      t.text :goto_name_code
      t.references :question, index: true
      t.references :choice_set, index: true

      t.timestamps
    end
  end
end
