class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.datetime :started_at
      t.datetime :finished_at
      t.references :surveyor, index: true

      t.timestamps
    end
  end
end
