class CreateChoiceSets < ActiveRecord::Migration
  def change
    create_table :choice_sets do |t|
      t.references :question, index: true
      t.text :choice_prompt_media
      t.references :choice, index: true

      t.timestamps
    end
  end
end
