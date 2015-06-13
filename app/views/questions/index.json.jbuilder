json.array!(@questions) do |question|
  json.extract! question, :id, :survey_id, :name, :question_media, :choice_prompt_repeat_media, :no_choice_media, :invalid_choice_media, :maximum_repeats_media, :maximum_invalid_repeats_media, :goto_name, :goto_name_code, :menu_render_options
  json.url question_url(question, format: :json)
end
