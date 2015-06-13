class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.references :campaign, index: true
      t.integer :phone_number
      t.text :metadata_hash
      t.integer :state
      t.string :fsa
      t.string :language
      t.integer :offset_hours_from_eastern

      t.timestamps
    end
  end
end
