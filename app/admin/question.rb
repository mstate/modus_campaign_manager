ActiveAdmin.register Question do
  permit_params :name, :question_media, :choice_prompt_repeat_media, :no_choice_media, :invalid_choice_media, :maximum_repeats_media, :maximum_invalid_repeats_media, :goto_name, :goto_name_code, :menu_render_options

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
