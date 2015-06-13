class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.text :description
      t.boolean :active
      t.text :case_selector_code

      t.timestamps
    end
  end
end
