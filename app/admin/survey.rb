ActiveAdmin.register Survey do
  permit_params :default_invalid_choice_media, :default_no_choice_media, :default_maximum_repeats_media, :default_maximum_invalid_repeats_media, :default_repeat_question_choices, :default_repeat_options_choices, :default_choice_prompt_repeat_media

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
