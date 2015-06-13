require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  setup do
    @question = questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question" do
    assert_difference('Question.count') do
      post :create, question: { choice_prompt_repeat_media: @question.choice_prompt_repeat_media, goto_name: @question.goto_name, goto_name_code: @question.goto_name_code, invalid_choice_media: @question.invalid_choice_media, maximum_invalid_repeats_media: @question.maximum_invalid_repeats_media, maximum_repeats_media: @question.maximum_repeats_media, menu_render_options: @question.menu_render_options, name: @question.name, no_choice_media: @question.no_choice_media, question_media: @question.question_media, survey_id: @question.survey_id }
    end

    assert_redirected_to question_path(assigns(:question))
  end

  test "should show question" do
    get :show, id: @question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question
    assert_response :success
  end

  test "should update question" do
    patch :update, id: @question, question: { choice_prompt_repeat_media: @question.choice_prompt_repeat_media, goto_name: @question.goto_name, goto_name_code: @question.goto_name_code, invalid_choice_media: @question.invalid_choice_media, maximum_invalid_repeats_media: @question.maximum_invalid_repeats_media, maximum_repeats_media: @question.maximum_repeats_media, menu_render_options: @question.menu_render_options, name: @question.name, no_choice_media: @question.no_choice_media, question_media: @question.question_media, survey_id: @question.survey_id }
    assert_redirected_to question_path(assigns(:question))
  end

  test "should destroy question" do
    assert_difference('Question.count', -1) do
      delete :destroy, id: @question
    end

    assert_redirected_to questions_path
  end
end
