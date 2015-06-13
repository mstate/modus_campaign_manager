class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.references :campaign, index: true
      t.text :default_invalid_choice_media
      t.text :default_no_choice_media
      t.text :default_maximum_repeats_media
      t.text :default_maximum_invalid_repeats_media
      t.text :default_repeat_question_choices
      t.text :default_repeat_options_choices
      t.text :default_choice_prompt_repeat_media

      t.timestamps
    end
  end
end
