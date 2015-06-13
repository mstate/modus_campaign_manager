require 'test_helper'

class SurveysControllerTest < ActionController::TestCase
  setup do
    @survey = surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey" do
    assert_difference('Survey.count') do
      post :create, survey: { campaign_id: @survey.campaign_id, default_choice_prompt_repeat_media: @survey.default_choice_prompt_repeat_media, default_invalid_choice_media: @survey.default_invalid_choice_media, default_maximum_invalid_repeats_media: @survey.default_maximum_invalid_repeats_media, default_maximum_repeats_media: @survey.default_maximum_repeats_media, default_no_choice_media: @survey.default_no_choice_media, default_repeat_options_choices: @survey.default_repeat_options_choices, default_repeat_question_choices: @survey.default_repeat_question_choices }
    end

    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should show survey" do
    get :show, id: @survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey
    assert_response :success
  end

  test "should update survey" do
    patch :update, id: @survey, survey: { campaign_id: @survey.campaign_id, default_choice_prompt_repeat_media: @survey.default_choice_prompt_repeat_media, default_invalid_choice_media: @survey.default_invalid_choice_media, default_maximum_invalid_repeats_media: @survey.default_maximum_invalid_repeats_media, default_maximum_repeats_media: @survey.default_maximum_repeats_media, default_no_choice_media: @survey.default_no_choice_media, default_repeat_options_choices: @survey.default_repeat_options_choices, default_repeat_question_choices: @survey.default_repeat_question_choices }
    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should destroy survey" do
    assert_difference('Survey.count', -1) do
      delete :destroy, id: @survey
    end

    assert_redirected_to surveys_path
  end
end
