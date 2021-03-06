json.array!(@surveys) do |survey|
  json.extract! survey, :id, :campaign_id, :default_invalid_choice_media, :default_no_choice_media, :default_maximum_repeats_media, :default_maximum_invalid_repeats_media, :default_repeat_question_choices, :default_repeat_options_choices, :default_choice_prompt_repeat_media
  json.url survey_url(survey, format: :json)
end
