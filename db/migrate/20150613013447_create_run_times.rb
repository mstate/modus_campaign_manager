class CreateRunTimes < ActiveRecord::Migration
  def change
    create_table :run_times do |t|
      t.references :campaign, index: true
      t.integer :days_of_week
      t.datetime :start_time
      t.datetime :end_time
      t.text :case_selector_code

      t.timestamps
    end
  end
end
