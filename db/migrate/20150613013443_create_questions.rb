class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :survey, index: true
      t.string :name
      t.text :question_media
      t.text :choice_prompt_repeat_media
      t.text :no_choice_media
      t.text :invalid_choice_media
      t.text :maximum_repeats_media
      t.text :maximum_invalid_repeats_media
      t.string :goto_name
      t.text :goto_name_code
      t.text :menu_render_options

      t.timestamps
    end
  end
end
