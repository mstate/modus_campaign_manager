class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.references :jobs, index: true
      t.boolean :final
      t.string :disposition
      t.text :results_hash
      t.references :case, index: true

      t.timestamps
    end
  end
end
