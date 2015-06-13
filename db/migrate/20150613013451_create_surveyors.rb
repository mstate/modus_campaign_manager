class CreateSurveyors < ActiveRecord::Migration
  def change
    create_table :surveyors do |t|
      t.string :uid
      t.boolean :active
      t.integer :simultaneous_calls
      t.datetime :last_connected_at

      t.timestamps
    end
  end
end
