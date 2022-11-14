require "test_helper"

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get questions" do
    get questions_questions_url
    assert_response :success
  end
end
